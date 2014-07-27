setwd("C:/Users/user/Desktop/Coursera/Developing Data Products/shinyapp")

library(devtools)
library(shinyapps)
library(shiny)


cancerRisk<-function(pHValue1,pHValue2) {
    p<-(pHValue1*2+pHValue2)/3
  print(p)
  
  k<-if(p< 7) {paste("Acidic- High Cancer Risk")}
         else {paste("Alcaline- Low Cancer Risk")}
  
print(k)
}


shinyServer(
  function(input, output) {
    output$inputValueA<-renderPrint({input$pHValue1})
    output$inputValueB<-renderPrint({input$pHValue2})
    output$result<-renderPrint({cancerRisk(input$pHValue1,input$pHValue2)})
    }
)