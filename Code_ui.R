
setwd("C:/Users/user/Desktop/Coursera/Developing Data Products/shinyapp")

# Creating of ui.R

library(devtools)
library(shinyapps)

library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Cancer Risk based on average pH-Value"),
    sidebarPanel(
      numericInput('pHValue1','saliva pH-Value',7,min=1,max=14, step=1),
      numericInput('pHValue2','urine pH-Value',7, min=1,max=14, step=1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results'),
      h4('You entered saliva pH-Value'),
      verbatimTextOutput('inputValueA'),
      h4('You entered urine pH-Value'),
      verbatimTextOutput('inputValueB'),
      h4('Your average pH-Value and potential Cancer Risk'),
      verbatimTextOutput('result')
      )
  )
)
