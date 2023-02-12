# Aula 08 - Action Buttom 

library(shiny)

ui <- shiny::fluidPage(
  titlePanel("Action Buttom"),
  sidebarLayout(sidebarPanel(
  actionButton("idButtom", 
               "Clique no botão para atualizar", 
               icon("refresh"))
    
    ), 
  
  mainPanel(
    
    textOutput("idSaida")
    
    )
  )
)

server = function(input, output){
# Valor reativo
observeEvent(input$idButtom, { 
# Todo o código que estive dentro de observeEvent será executado ao clicar no botão
               
   output$idSaida <- renderText("Mensagem Exibida")      
        
    }
               
  )
  
}


shiny::shinyApp(ui, server)
