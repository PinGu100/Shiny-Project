library(shiny)
library("quantmod")
library(tidyr)
library(dplyr)
#library(plotly)


shinyServer(function(input, output) {
  
  output$plot1<-renderPlot({
    x<-getSymbols(input$symbol,src='google',from =input$beginDate,to=input$endDate,
               auto.assign=FALSE)
    chartSeries(x,type="candlesticks",theme=chartTheme('white'))
    
   })
  
})
