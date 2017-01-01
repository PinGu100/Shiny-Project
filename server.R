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
    #time<-time(x)
    #data<-matrix(nrow=nrow(x),ncol=1)
    #data[,1]<-x[,4]
    #data<-as.data.frame(data)
    #data<-mutate(data,time=time)
    #plot_ly(x=data[,2],y=data[,1],type="scatter",mode="markers")
    
   })
  
})
