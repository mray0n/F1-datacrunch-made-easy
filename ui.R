## no se si necesitare esto 
## library(ggvis)
library(shiny)
library(ggplot2)
China2016v2<-readRDS("data/China2016.rds")
shinyUI(fluidPage(
  #  Application title
headerPanel("China GP 2016"),
  sidebarPanel(
           sliderInput("laps", "Lap range", 1, 56, value = c(1, 56)),
#           selectizeInput(
#             'e2', '2. Select Drivers', choices = levels (China2016$drivername), multiple = TRUE),
           selectInput('x', 'Driver1', levels(China2016v2$drivername),multiple=FALSE),
           selectInput('y', 'Driver2', levels(China2016v2$drivername),multiple=FALSE)
#          , selectInput('y', 'Driver2', list=drivername)
    ),
           

 mainPanel(
   plotOutput("F1Plot"),
   p("This is a comparison of the lap times obtained by the drivers selected in the F1 2016 China GP"),
   p("Laptime is showed in seconds. Notice that the peaks in laptime account for a pitstop, therefore in most cases these peaks also signal the change in tyre type.")
   )
)
)