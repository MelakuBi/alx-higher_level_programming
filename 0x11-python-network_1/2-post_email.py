#!/usr/bin/python3
''' Task 2 '''
if __name__ == "__main__":
    from sys import argv
    import urllib.request
    url = argv[1]
    email = {"email": argv[2]}
'''    req = requests.post(url, email)
    getemail = urllib.parse.urlencode(email)
    getemail = getemail.encode("utf-8") '''
req = urllib.request.Request(url, email)
with urllib.request.urlopen(req) as response:
    body = response.read()
    print("{}".format(body))
