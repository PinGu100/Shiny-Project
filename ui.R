library(shiny)
curDate<-Sys.Date()

shinyUI(fluidPage(
  titlePanel("Plot US Stock Price"),
  
  fluidRow(
    column(1,textInput("symbol",label="Symbol",value="SPY",width = "400px")), 
    column(2,dateInput("beginDate", "Begin Date",value='2016-08-03',format='yyyy-mm-dd')),
    column(3,dateInput("endDate", "End Date",value=curDate,format='yyyy-mm-dd'))
  ),
  plotOutput("plot1")
  #plotlyOutput("plot1")
)
)
  
  
  
  
  
 