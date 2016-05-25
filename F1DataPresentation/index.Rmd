---
title       : Presentation for F1DataCrunch
subtitle    : The initial step for an F1 races visual data analyser
author      : Miguel Rayon
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## The APP


This [app](https://miguelrayon.shinyapps.io/F1DataCrunch/) allows to compare the performance of 2 drivers during the 2016 Chinese F1 GP You can choose the drivers and also the lap range in which to look at the laptimes and tyres used by the drivers In the plot it is shown the laptime in seconds for each lap of the range selected. Also the tyre used for each stint of the race is displayed by the shape of the dot, (medium, soft or supersoft)  

---

## Why: the reasons

F1DataCrunch is an app to explore the posibilities of visual analysis of data resulting from F1 races  
The first version of App which is currently [here in shiny app](https://miguelrayon.shinyapps.io/F1DataCrunch/) has been done with the data of the 2016 China F1 Grand Prix  
Although the application right now shows a direct race comparison between 2 drivers, showing laptimes and tyre usage, in the whole race or in a given range of laps, my intention is to keep improving the app, to include comparisons between stints, summary of the performance during the range of laps studied, include pitstop times...  

---


## The Process: Data acquisition


All the data has been retrieve from public [FIA web results page](http://www.fia.com/events/fia-formula-one-world-championship/season-2016/event-timing-information-11)  
Using [tabula](http://tabula.technology/) the data has been extracted from pdf to csv, and after further manipulation the data is ready for anaysis  

---

## The chart and the data

The plot has been code with the ggplot2 package and the data of the GP had to be load into de application by a .rds file  
The complete code can be found in my repository [here](https://github.com/mray0n/F1-datacrunch-made-easy.git)

Keep visiting for further updates  

---
