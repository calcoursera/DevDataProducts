library(shiny)

# Define the overall UI
shinyUI(

  # Use a fluid Bootstrap layout
  fluidPage(

    # Give the page a title
    titlePanel("Impact of Tornado / Hail on Economy/Population"),

    # Generate a row with a sidebar
    sidebarLayout(

      # Define the sidebar with one input
      sidebarPanel(
      
       selectInput("year", "Year:",
                    choices=c("1965", "1975","1985", "1995","2005", "2015")),
        
        selectInput("impact", "Economic/Population:",
                    choices=c("Fatalities","Injuries", "PropDamage")),
        hr(),
        helpText("Selected data from Storm Database", br(),
                 "Select the year range,  and type of damage to get the appropriate bar plot.")),

      # Create a spot for the barplot
      mainPanel(
        plotOutput("plot1"),plotOutput("plot2") ))))
