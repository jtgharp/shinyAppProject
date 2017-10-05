# server.R
library(shiny)
shinyServer( function(input, output) {
      
      output$plot1 <- renderPlot({
                    plot(NA, type="l", xlim=c(-10,10),ylim=c(-10,10), xlab="X", ylab="Y", lwd=3)
                        abline(h=0)
                        abline(v=0)
                        if((!is.na(input$intercept)) & (!is.na(input$slope))){
                        abline(input$intercept,input$slope, col="red", lwd="2") } 
      })
}
)