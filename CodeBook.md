---
title: "CodeBook"
author: "Francis Beaumont"
date: "March 13, 2017"
output: html_document
---
I did use David Hood guide to help for the assignment
https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## CodeBook
## Data Cleaning Week4 Assignment


This code book summarizes the resulting data fields in finaldata.csv

Identifiers

subject - The ID of the test subject
activity - The type of activity performed when the corresponding measurements were taken

Activity Labels
WALKING (value 1): subject was walking during the test
WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
SITTING (value 4): subject was sitting during the test
STANDING (value 5): subject was standing during the test
LAYING (value 6): subject was laying down during the test
