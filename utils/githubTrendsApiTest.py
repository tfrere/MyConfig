# More informations about the API
# https://developer.github.com/v3/search/#search-repositories

# More information about the syntax
# https://help.github.com/en/github/searching-for-information-on-github/understanding-the-search-syntax

# Direct search =>  d3 react stars:>1000 language:javascript pushed:>2019-01-01
# https://github.com/search

import argparse
import json
from urllib.request import urlopen
import urllib.parse
import pyjq

parser = argparse.ArgumentParser()
parser.add_argument("-w", "--word", type=str, default="react+d3")
parser.add_argument("-l", "--language", type=str, default="javascript")
args = parser.parse_args()

type = "repositories"
# +pushed:2019-01-01+stars:<1000
params = {'q': args.word + "+language:javascript", 'sort': 'stars', 'order': 'desc'}
url = "https://api.github.com/search/"+type+"?" + urllib.parse.urlencode(params)

print("Fetching datas for words : " + args.word + " with language : " + args.language)
response =urlopen(url)
data = response.read()
# {name, description, language, watchers_count, html_url}
response = pyjq.all(".items[] | {name, watchers, description, language, stargazers_count}", url=url)

print(json.dumps(response, indent=4, sort_keys=False))
