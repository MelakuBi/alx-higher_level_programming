#!/usr/bin/python3
import urllib
import sys
if __name__ == "__main__":
    with urllib.request(argv[1]) as response:
        response.headers['X-Request-Id']

