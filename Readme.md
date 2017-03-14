---
title: "Readme"
author: "Francis Beaumont"
date: "March 13, 2017"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

Getting And Cleaning Data - Course Project

Introduction

This repo contains my course project to Coursera "Getting And Cleaning Data" course.  Its the ReadMe file for the last assignment for Week4.

There is just one script called "run_analysis.R". It contains all functions and code to do the following:

Download the data
Read data
Do some transformations
Write output data to a file
The CodeBook.md explains it more detailed.

Run from command line

Clone this repo
Run the script:

$ Rscript run_analysis.R

Look for the final dataset at data/output/finaldata.csv

$ head -3 data/output/finaldata.txt