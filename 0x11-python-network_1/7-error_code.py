#!/usr/bin/python3
# Task 7. Error code #1
if __name__ == "__main__":
    import sys
    import requests
    url = sys.argv[1]
#    req = requests.get(url)
    with requests.get(url) as resp:
        if resp.status_code >= 400:
            print("Error code: {}".format(resp.status_code))
        else:
            print(resp.text)
