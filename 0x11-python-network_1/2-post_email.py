#!/usr/bin/python3
''' Task 2 '''
if __name__ == "__main__":
    from sys import argv
    import urllib.request
    url = argv[1]
    email = {"email": argv[2]}
    email = urllib.parse.urlencode(email)
    email = email.encode("utf-8")
    req = urllib.request.Request(url, email)
    with urllib.request.urlopen(req) as response:
        body = response.read().decode("utf-8")
        print("{}".format(body))
