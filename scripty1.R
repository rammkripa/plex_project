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
new_df <- articles %>%
  group_by(id) %>%
  summarize(count = n()) %>%
  arrange(count) %>%
  head(n = 15L)
library(tidyverse)
tweets <- hx_tweets(new_df$id)
hx_spreaders()
tweets %>%
  group_by(id) %>%
  mutate(tweet_id = as.numeric(tweet_id)) %>%
  summarize(tweet_id = max(tweet_id))
library(rtweet)
?lookup_tweets
# Lookup Tweets seems to work to give the text of the tweet
a <- lookup_tweets(statuses = "749649358237433856", parse = TRUE)
library(tidytext)
a %>%
  unnest_tokens(output = "tweet_words",
                input = "text",
                token = "words") %>%
  select(tweet_words)