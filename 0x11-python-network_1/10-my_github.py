#!/usr/bin/python3
''' Task 8. Search API '''
if __name__ == "__main__":
    import sys
    import requests
'''    the_url = "https://api.github.com/user" '''
    my_user = sys.argv[1]
    my_pass = sys.argv[2]
    credent = {'username': 'my_user', 'password': 'my_pass'}
    my_requ = requests.get('https://api.github.com/user', params=credent)
    the_resp = my_requ.json()
    print("{}".format(the_resp.get("id")))
