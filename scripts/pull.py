import subprocess
import argparse
import urllib.request
import json

def get(url):
    with urllib.request.urlopen(url) as f:
        res = f.read()
    return json.loads(res)

def clone_pulls(user, repo):
    res = get(f'https://api.github.com/repos/{user}/{repo}/pulls')

    urls = [(r['head']['user']['login'],
             r['head']['repo']['clone_url'])
            for r in res]

    for u,r in urls:
        subprocess.run(['git', 'clone', r, u])


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Pulls')
    parser.add_argument('user')
    parser.add_argument('repo')
    args = parser.parse_args()
    clone_pulls(args.user, args.repo)
