---
title       : K-Means - Mtcars from ggplot2
subtitle    : Slidify for Coursera Developing Data Products project
author      : Kevin Pérez C.
job         : R Learner
logo        : unicordoba3.png
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, quiz, bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction 

This application seeks to give solution to the ongoing project, which consists of first,i will create a Shiny application and deploy it on Rstudio's servers. Second, i will use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about your application.

I chose to develop a very simple application, by k-means cluster in a data set from the library ggplot2.

---

## mtcars from ggplot2 

The data was extracted from the 1974 _Motor_ _Trend_ _US_ _magazine_, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).

### Format

* [, 1]        mpg	Miles/(US) gallon
* [, 2]	cyl	Number of cylinders
* [, 3]	disp	Displacement (cu.in.)
* [, 4]	hp	Gross horsepower
* [, 5]	drat	Rear axle ratio

---

## mtcars from ggplot2 

The data was extracted from the 1974 _Motor_ _Trend_ _US_ _magazine_, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).

* [, 6]	wt	Weight (lb/1000)
* [, 7]	qsec	1/4 mile time
* [, 8]	vs	V/S
* [, 9]	am	Transmission (0 = automatic, 1 = manual)
* [,10]	gear	Number of forward gears
* [,11]	carb	Number of carburetors

### Source

Henderson and Velleman (1981), Building multiple regression models interactively. _Biometrics_, 37, 391–411.

---

## k-means in **_mtcars_**


```r
library(ggplot2)
clusters <- kmeans(mtcars[,c(1,3)],3)
with(mtcars, plot(mpg, disp, col= clusters$cluster,pch = 20, cex = 2,frame = FALSE))
grid(4, 4, lwd = 1)
points(clusters$centers, pch = 13, cex = 2, lwd = 2)
```

<img src="assets/fig/unnamed-chunk-1-1.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

---


