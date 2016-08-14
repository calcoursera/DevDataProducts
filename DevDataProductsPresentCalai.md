Published at http://rpubs.com/kcal70323/202082

Developing Data Products Presententation 
========================================================
author: Calai
autosize: true
date: Sun Aug 14 19:16:34 2016
transition: rotate


Storm Impact Explorer
========================================================
type: sub-section

This presentation is part of the Developing Data Products Assessment on Coursera, to present work done on building a Shiny App as a data product.  R presentation has been used to create the same. 

- **shiny** to build data product application
- **R-Presentation or slidify** to create data product related presentations

The Application
========================================================
type: sub-section
A simple application that takes user input and produces reactive output related to storm data.  Known as the  **Storm Impact Explorer**, it has been developed  using **Shiny** and deployed at: 
https://kcal70323.shinyapps.io/MyApp/


The application allows the user to:

- Choose the type of impact such as Property Damage, Injuries or Fatalities and the year.

A bar plot depicting the impact due to storm events across various states during the years leading to the selected year is plotted.

The Data
========================================================
type: sub-section
This application is based on the U.S. National Oceanic and Atmospheric Administration's (NOAA) storm database from the source below, that was used for the Reproducible Research Course assignment from Coursera.

Source [here](https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2) 

Source code for the project is available on the [GitHub] https://github.com/calcoursera/DevDataProducts


Data
=====================
type: sub-section
Read Data

```r
library(data.table)
dt <- fread('events.agg.csv')
head(dt)
```

```
   YEAR   STATE  EVTYPE COUNT FATALITIES INJURIES PROPDMG CROPDMG
1: 1950 alabama TORNADO     2          0       15 0.02750       0
2: 1951 alabama TORNADO     5          0       13 0.03500       0
3: 1952 alabama TORNADO    13          6      116 5.45250       0
4: 1953 alabama TORNADO    22         16      248 3.07000       0
5: 1954 alabama TORNADO    10          0       36 0.60753       0
6: 1955 alabama TORNADO     8          5       27 7.58000       0
```

