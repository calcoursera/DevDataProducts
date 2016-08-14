library(shiny)

data <- read.csv("events.agg.csv", sep=",", header=T)
colnames(data)[1] <- "Year"
colnames(data)[3] <- "Evtype"
colnames(data)[4] <- "Count"
colnames(data)[5] <- "Fatalities"
colnames(data)[6] <- "Injuries"
colnames(data)[7] <- "PropDamage"

## Define a server for the Shiny app
shinyServer(function(input, output) {
  
  dataInput <- reactive({
    subset(data, select=c(input$impact), subset=(data$Year < input$year))
  })
  
  

  
  ## Fill in the spot we created for a plot
  output$plot1 <- renderPlot({
    
    ## Render a barplot
    barplot(dataInput()[,input$impact],
            main=paste(input$impact, "in", input$year,"and earlier"),
            ylab="Impact", ylim=c(0,200),
            xlab="Across Various States",xlim=c(0,50))
  })
  
})

