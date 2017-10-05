# ui.R
library(shiny)
shinyUI(fluidPage(
            titlePanel("Draw a Line By Specifying Intercept and Slope"),
      
            sidebarLayout(
                  sidebarPanel(
                        fluidRow(
                              column(5, 
                               numericInput("intercept", label = h3("Intercept Value"), value = 9)
                               )
                        
                  
                        ),
                        fluidRow(
                        
                              column(5, 
                               numericInput("slope", label = h3("Slope Value"), value = -1)
                              )
                        
                        )
                        
                  ),
                  
            
                  mainPanel(
                        plotOutput("plot1")
                  )
            )
      )
)
