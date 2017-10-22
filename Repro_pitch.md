Repro_pitch
========================================================
author: Theo Livingwell
date: 21 Oct 2017
autosize: true

Reproducible Pitch Presentation
Select a comfortable experience for your journey with one of Nissan pool cars.

========================================================

Nissan pool cars are a range of different makes and models of cars. 
A shiny application is created to help Nissan employees select a comfortable 
experience for their journeys when using pool cars. A comfortable experience means 
good performance on fuel usage within budget, speed and ease of tiredness 
depending on the type of transmission (Automatic or Manual) preferred.

NissanPoolCars shiny app can be found at https://alchgabriel3.shinyapps.io/NissanPoolCars/
The associated ui.R and server.R codes are on https://github.com/theo-livingwell1/NissanPoolCars.git



========================================================

How the app works

The app allows you, the user to inputs basic information about your journey. The app displays 
cars that are relevant to the user input allowing for peace of mind, relaxation and comfort 
during your journey.

The user provides two sets of information on the side panel: 

a. information about journey 
1.	estimated distance
2.	Price of gasoline at the time of journey
3.	How much they are willing to spending on gasoline on entire journey

b. set parameters about pool car

The main panel displays relevant matches for a comfortable journey 

========================================================

Data
Data used for this assignment comes from mtcars data set built in to R. This data was chosen as Nissan pool cars are a collection of same makes and models. 

Some exploratory view of the data


```r
head(mtcars, 7)
```

```
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
Duster 360        14.3   8  360 245 3.21 3.570 15.84  0  0    3    4
```

==========================================================================

Here is a plot comparing automatic and manual cars on mile per gallon, mpg


```r
boxplot(mpg~am, data=mtcars, xlab="Form of transmission", ylab="miles per gallon, mpg", main="How is the form of transmission related to the miles per gallon, mpg")
```

![plot of chunk unnamed-chunk-2](Repro_pitch-figure/unnamed-chunk-2-1.png)

 
