# Aula 4 - Entrada de dados numéricos 
library(shiny)

ui = shiny::fluidPage(
  titlePanel("Numeric input"),
  sidebarLayout(# barra lateral 
    sidebarPanel(# inputs 
      
      numericInput("idEntradaNumerica", 
                   "Informe um número", 0, 
                   min = 0, 
                   max = 100, 
                   step = 5)
      ),
  
  mainPanel(
    verbatimTextOutput("idSaida", placeholder = T)
    )

  )
)

server = function(input, output){
  
  output$idSaida <- renderText({input$idEntradaNumerica})
  
}

shiny::shinyApp(ui, server)

