#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library("scatterplot3d") 

shinyServer(function(input, output) {
    output$plot1 <- renderPlot({
        set.seed(00001)
        meanX <- input$sliderXmean[1]
        sdX <- input$sliderXsd[1]
        meanY <- input$sliderYmean[1]
        sdY <- input$sliderYsd[1]
        meanZ <- input$sliderZmean[1]
        sdZ <- input$sliderZsd[1]
        symbol <- input$sliderscatterp[1]
        
        xlab <- ifelse(input$show_xlab, "X Axis", "")
        ylab <- ifelse(input$show_ylab, "Y Axis", "")
        zlab <- ifelse(input$show_zlab, "Z Axis", "")
        
        number_of_points <- input$numeric
        y_use <- rnorm(number_of_points, mean = meanY, sd = sdY)
        x_use <- rnorm(number_of_points, mean = meanX, sd = sdX)
        z_use <- rnorm(number_of_points, mean = meanZ, sd = sdZ)
        scatterplot3d(x_use, y=y_use, z=z_use,main="3D Scatter Plot of normal simulated data",
                      xlab = xlab, ylab = ylab, zlab = zlab,xlim=c(-200,200),
                      ylim=c(-200,200),zlim=c(-200,200), color="red", pch=symbol)
        
    })
})
