library(shiny)
library(ggplot2)
China2016v2<-readRDS("data/China2016.rds")
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
output$F1Plot <- renderPlot({
        ggplot(data=subset(China2016v2, drivername==input$x|drivername==input$y), aes(x=lapnumber, y=laptime ,group=drivername, colour = drivername, shape = tyretype))+geom_line()+xlim(input$laps)+scale_y_continuous(limits=c(99, 160))+geom_point(size=3)+labs(x="Lap number",y="Lap time in seconds")+scale_shape_discrete(name="tyre used",breaks=c("m", "s", "ss"),labels=c("Medium", "Soft", "Super Soft"))
#    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
  })
})

# ggplot(data=subset(China2016, drivername=="C. SAINZ"), aes(x=lapnumber, y=laptime, ,group=drivername, colour = drivername, shape = tyretype, xlabel="Lap Number", ylabel="laptime in seconds"))+geom_line()+xlim(3,53)+scale_y_continuous(limits=c(99, 160))+geom_point(size=3)+labs(x="Lap number",y="Lap time in seconds")+scale_shape_discrete(name="tyre used",breaks=c("m", "s", "ss"),labels=c("Medium", "Soft", "Super Soft"))