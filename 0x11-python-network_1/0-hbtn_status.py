#!/usr/bin/python3
import urllib.request
if __name__ == "__main__":
    req = urllib.request.Request(https://alx-intranet.hbtn.io/status)
    with urllib.request.rulopen(req) as response:
        the_page = response.read()
