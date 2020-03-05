# More informations about the API
# https://developer.github.com/v3/search/#search-repositories

# More information about the syntax
# https://help.github.com/en/github/searching-for-information-on-github/understanding-the-search-syntax

# Direct search =>  d3 react stars:>1000 language:javascript pushed:>2019-01-01
# https://github.com/search


# Contenant les mots clés
## d3+react
# Projet avec bcp de stars
## stars:>1000
# Updaté il y a moins de 6 mois
## pushed:>`date -v-6m '+%Y-%m-%d'`
# Créé il y a plus d'un an
## created:<`date -v-1y '+%Y-%m-%d'`

curl -G https://api.github.com/search/repositories         \
    --data-urlencode "q=d3+react+chart+stars:>1000" \
    --data-urlencode "sort=stars"                          \
    --data-urlencode "order=desc"                          \
    -H "Accept: application/vnd.github.preview"            \
    | jq ".items[] | {name, description, stargazers_count, score, language, watchers_count, html_url}"
