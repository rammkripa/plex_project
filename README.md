# Plex Project

## The Project
This project aims to filter fake news from Twitter using:

1. The rtweet package (A wrapper for the twitter REST and Stream APIs)

2. The Hoaxy API for Fake News

## Group Members

1. [Allen Chen](mailto:achen2c@berkeley.edu)
2. [Ram M Kripa](https://rammkripa.github.io/)

## Resources

1. [Shiny](https://shiny.rstudio.com/#:~:text=Shiny%20is%20an%20R%20package,%2C%20htmlwidgets%2C%20and%20JavaScript%20actions.)
2. [rtweet package](https://cran.r-project.org/web/packages/rtweet/rtweet.pdf)
3. [newsanchor package](https://cran.r-project.org/web/packages/newsanchor/)
4. [Hoaxy](https://rapidapi.com/truthy/api/hoaxy/details)

## Process

1. Obtaining training set:
Hoaxy API for fake news
Rtweet for real news
2. Tidytext to transform data for analysis, and anti join with stop words, stem the words.
3. Series of Visualizations comparing Real and Fake news.
4. Train a random forest model with [insert number here] trees
5. Test the model with a series of visualizations.
6. Apply the model to User input and classify.
7. Apply sentiment analysis?

## Exploratory Visualizations

1. What words are most common in Real and Fake news?
2. Rate words by impurity. (TF-IDF?)
3. What words have the highest TFIDF score in Real and Fake news?
4. What is the difference in average sentiment between Real and Fake news?
5. Rank words by impurity within the Random Forest model.

## User Visualizations

1. What words are most common in Real News, Fake News, and whether they exist in this user's tweets?
2. Ranked words by Imputrity in the random forest model.
3. Distribution of Tweet Sentiment between this user, real and fake news.
4. Result.

## User Experience

1. Input a twitter handle.
2. Obtain a series of visualizations followed by an outcome (Fake or Real).
