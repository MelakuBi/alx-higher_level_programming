#!/usr/bin/python3
''' Task 2 '''
if __name__ == "__main__":
    from sys import argv
    import urllib.request
    url = argv[1]
    email = {"email": argv[2]}
    getemail = urllib.parse.urlencode(email)
    getemail = email.encode("utf-8")
    request = urllib.request.Request(email, getemail)
    with urllib.request.urlopen(request) as response:
        body = response.read().decode)"utf-8")
        print("{}.format(body))

