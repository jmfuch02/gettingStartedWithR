---
title       : Five Things You Should Be Doing in R
subtitle    : An Introduction
author      : Jason Fuchs
job         : Sr. Product Engineer, Research and Development
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction: Data Analysis

"Solve this problem... Answer this question..."

1. Load the data
2. Clean it
3. Graph it
4. Change something
5. Send it to 'production'

---

## Problems

1. Acquisition, cleaning, reporting all need separate tools
1. Data and analysis live together in the same file
1. Updating data is hard
1. Describing what you did to someone else is nearly impossible

---

## Why R?

* It's free
* It has a very nice development environment: Rstudio - www.rstudio.com
* There is an active community of developers and support
* There is a wide variety of packages, which are easy to install

---

## Getting R

R - https://cran.r-project.org/

RStudio - https://www.rstudio.com/products/rstudio/download/

---

## Basics

* Use the <- operator to assign
* Don't use ; at the end of lines


```r
x <- 1
x
```

```
## [1] 1
```

```r
y <- c(2, 3, 4)
y
```

```
## [1] 2 3 4
```

---

## Basics: If


```r
x <- 5

if (x > 3) {
    y <- 10
} else {
    y <- 0
}
print(y)
```

```
## [1] 10
```

---

## Basics: For


```r
for (i in 1:10) {
    print(i)
}
```

```
## [1] 1
## [1] 2
## [1] 3
## [1] 4
## [1] 5
## [1] 6
## [1] 7
## [1] 8
## [1] 9
## [1] 10
```

---

## Basics: Data Frames


```r
d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata <- data.frame(d,e,f)
names(mydata) <- c("ID","Color","Passed") # variable names
print(mydata)
```

```
##   ID Color Passed
## 1  1   red   TRUE
## 2  2 white   TRUE
## 3  3   red   TRUE
## 4  4  <NA>  FALSE
```

http://www.statmethods.net/input/datatypes.html

---

## Basics: Data Frames


```r
# variable gender with 20 "male" entries and 30 "female" entries 
gender <- c(rep("male",20), rep("female", 30)) 
gender <- factor(gender) 
# stores gender as 20 1s and 30 2s and associates
# 1=female, 2=male internally (alphabetically)
summary(gender)
```

```
## female   male 
##     30     20
```

```r
str(gender)
```

```
##  Factor w/ 2 levels "female","male": 2 2 2 2 2 2 2 2 2 2 ...
```

http://www.statmethods.net/input/datatypes.html

---

## 1. Getting data from a database or website


```r
fileUrl <- "http://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="./data/cameras.csv")
list.files("./data")
```

```
## [1] "cameras.csv"     "restaurants.csv"
```

```r
dateDownloaded <- date()
dateDownloaded
```

```
## [1] "Tue Jul 21 15:09:11 2015"
```

https://github.com/rdpeng/courses/tree/master/03_GettingData

---

## 1. Getting data from a database or website


```r
cameraData <- read.table("./data/cameras.csv",sep=",",header=TRUE)
head(cameraData)
```

```
##                          address direction      street  crossStreet
## 1       S CATON AVE & BENSON AVE       N/B   Caton Ave   Benson Ave
## 2       S CATON AVE & BENSON AVE       S/B   Caton Ave   Benson Ave
## 3 WILKENS AVE & PINE HEIGHTS AVE       E/B Wilkens Ave Pine Heights
## 4        THE ALAMEDA & E 33RD ST       S/B The Alameda      33rd St
## 5        E 33RD ST & THE ALAMEDA       E/B      E 33rd  The Alameda
## 6        ERDMAN AVE & N MACON ST       E/B      Erdman     Macon St
##                 intersection                      Location.1
## 1     Caton Ave & Benson Ave (39.2693779962, -76.6688185297)
## 2     Caton Ave & Benson Ave (39.2693157898, -76.6689698176)
## 3 Wilkens Ave & Pine Heights  (39.2720252302, -76.676960806)
## 4     The Alameda  & 33rd St (39.3285013141, -76.5953545714)
## 5      E 33rd  & The Alameda (39.3283410623, -76.5953594625)
## 6         Erdman  & Macon St (39.3068045671, -76.5593167803)
```

---

## 2. Cleaning Data


```r
fileUrl <- "http://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="./data/restaurants.csv")
restData <- read.csv("./data/restaurants.csv")
```

---

## 2. Cleaning Data

Summarizing data


```r
str(restData)
```

```
## 'data.frame':	1327 obs. of  6 variables:
##  $ name           : Factor w/ 1277 levels "#1 CHINESE KITCHEN",..: 9 3 992 1 2 4 5 6 7 8 ...
##  $ zipCode        : int  21206 21231 21224 21211 21223 21218 21205 21211 21205 21231 ...
##  $ neighborhood   : Factor w/ 173 levels "Abell","Arlington",..: 53 52 18 66 104 33 98 133 98 157 ...
##  $ councilDistrict: int  2 1 1 14 9 14 13 7 13 1 ...
##  $ policeDistrict : Factor w/ 9 levels "CENTRAL","EASTERN",..: 3 6 6 4 8 3 6 4 6 6 ...
##  $ Location.1     : Factor w/ 1210 levels "1 BIDDLE ST\nBaltimore, MD\n",..: 835 334 554 755 492 537 505 530 507 569 ...
```

---

## 2. Cleaning Data

Finding missing values



---

## Making charts and graphs

---

## Interacting with data

---

## Creating presentations and reports

---

## Junk

<img src="assets/img/Genscape_logo_grey.png" height=100> _Genscape_

![anything](assets/img/Genscape_logo_grey.png) _Genscape_

---
