#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(fluidPage(
  titlePanel("Plot Random Numbers"),
  sidebarLayout(
    sidebarPanel(
      numericInput("numeric", "How Many Random Numbers Should be Plotted?", 
                   value = 100, min = 1, max = 1000, step = 1),
      sliderInput("sliderXmean", "Pick a value for the mean of x simulated data",
                  -100, 100, value =50),
      sliderInput("sliderXsd", "Pick a value for the standard deviation of x simulated data",
                  0, 100, value = 50),
      sliderInput("sliderYmean", "Pick a value for the mean of y simulated data",
                  -100, 100, value =50),
      sliderInput("sliderYsd", "Pick a value for the standard deviation of y simulated data",
                  0, 100, value = 50),
      sliderInput("sliderZmean", "Pick a value for the mean of z simulated data",
                  -100, 100, value =50),
      sliderInput("sliderZsd", "Pick a value for the standard deviation of z simulated data",
                  0, 100, value = 50),
    ),
    mainPanel(
      helpText("How to use:"),
      helpText("1. Specify the number of samples for each variable. Ranges from 1 to 1000."),
      helpText("2. Specify the mean and standard devation for each random variable."),
      helpText("3. You may change the axis displays and scatterplot points by changing the options below the graph. "),
      helpText("The graph will automatically update as you make changes."),
      h3("Graph of Random Points"),
      plotOutput("plot1"),
      sliderInput("sliderscatterp", "Pick a scatterplot symbol",0, 20, value = 10),
      checkboxInput("show_xlab", "Show/Hide X Axis Label", value = TRUE),
      checkboxInput("show_ylab", "Show/Hide Y Axis Label", value = TRUE),
      checkboxInput("show_zlab", "Show/Hide Z Axis Label", value = TRUE),
    )
  )
))
