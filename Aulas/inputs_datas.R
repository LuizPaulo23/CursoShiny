# Aula 5 - input Datas 

library(shiny)
library(lubridate)

ui = shiny::fluidPage(
  titlePanel("InputDate"),
  sidebarLayout(sidebarPanel(
    
    dateInput("idData", 
              "Informe a data",
              format = "dd-mm-yy", 
              language = "pt", 
              autoclose = T)
    
    ), 
    
    mainPanel(verbatimTextOutput("idSaidaData")
      
    )
  
  )
  
)

server = function(input, output){
  
 output$idSaidaData <- renderText({as.character(input$idData)})
  
}


shiny::shinyApp(ui, server)
