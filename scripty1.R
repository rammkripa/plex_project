## Script For Testing out stuff
library(shiny)
runExample("01_hello")
library(here)
rsconnect::deployApp(here("FakeNews.Rmd"))