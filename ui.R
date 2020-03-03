#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny);library(ggplot2)
shinyUI(fluidPage(
        titlePanel("Diamond prices"),
        sidebarLayout(
                sidebarPanel(
                        radioButtons("cutchoice", "Choose cut:",
                                     c("Fair" = "Fair",
                                       "Good" = "Good",
                                       "Very Good" = "Very Good",
                                       "Premium" = "Premium",
                                       "Ideal" = "Ideal"
                                       )),
                ),
                mainPanel(
                        plotOutput("cutPlot"),
                        p('        Color, from D (best) to J (worst)')
                )
        )
))