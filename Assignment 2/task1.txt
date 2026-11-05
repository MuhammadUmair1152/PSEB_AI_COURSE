import requests

usernames = ["MuhammadUmair1152", "Muzair115", "Marsalan"]

for username in usernames:
    response = requests.get(f"https://api.github.com/users/{username}")
    
    if response.status_code == 200:
        data = response.json()
        print(f"Login: {data['login']} | Public Repos: {data['public_repos']}")
    else:
        print(f"Failed to fetch {username}. Status Code: {response.status_code}")

# OUTPUT
# python .\githubApi.py
# Login: MuhammadUmair1152 | Public Repos: 20
# Failed to fetch Muzair115. Status Code: 404
# Login: mArsalan | Public Repos: 2
# PS E:\M Umair\AI> 

