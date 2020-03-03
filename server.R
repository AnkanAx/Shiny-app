#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny);library(ggplot2)
shinyServer(function(input, output) {
        output$cutPlot <- renderPlot({
                qplot(carat, price, data = subset(diamonds, diamonds$cut %in% input$cutchoice), color=color, geom=c("point","smooth"), ylim = c(0,20000), xlim = c(0,4))
        })
})
