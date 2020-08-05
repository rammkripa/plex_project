## Script For Testing out stuff
library(shiny)
# Testing Shiny
# runExample("01_hello")
library(here)
# to deploy the app
# rsconnect::deployApp(here("FakeNews.Rmd"))
#install.packages("remotes")
# remotes::install_github("news-r/hoaxy")
# Add environment variable containing API Key
library(hoaxy)
# How to access hoaxy API
articles <- hx_articles(q = "Trump",
            sort_by = "relevant")
articles %>%
  group_by(id) %>%
  summarize(count = n())
tweets <- hx_tweets(articles$id[1:5])
library(tidyverse)
tweets %>%
  group_by(id) %>%
  mutate(tweet_id = as.numeric(tweet_id)) %>%
  summarize(tweet_id = max(tweet_id))