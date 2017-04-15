library(httr)

endpoints <- oauth_endpoints("github")

myapp <- oauth_app("github",
    key = "6a413f0c21e1fd01fb49",
    secret = "a976179c3d08817075ce8bfb80d56898ef9ebb48")

github_token <- oauth2.0_token(endpoints, myapp)

request_config <- config(token = github_token)

data_request <- with_config(request_config, GET("https://api.github.com/users/jtleek/repos"))
stop_for_status(data_request)
repo_data <- content(data_request)

