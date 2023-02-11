# Aula 6 - Radio butom 
# Informar opções 
rm(list = ls())
library(shiny)

ui = shiny::fluidPage(
  sidebarLayout(sidebarPanel(
    
    # radioButtons("radioId", 
    #             "Selecione o seu sexo", 
    #             choices = c("Masculino", 
    #                         "Feminino", 
    #                         "Outros"), 
    #             inline = F # F = opções em sequência 
    # )
    
    radioButtons("radioId", 
                 "Selecione o seu sexo", 
                 list("Opção 1" = 1, 
                      "Opção 2" = 2, 
                      "Opção 3" = 3),
                 selected = FALSE, # F = não pré-selecionar nenhuma opção 
                 inline = F # F = opções em sequência 
    ) 
    
    
   
    ), 
    
    mainPanel(
      verbatimTextOutput("idSaida")
    )
    
  )
  
)

server = function(input, output){
  
  output$idSaida <- renderText({input$radioId})
  
}



shiny::shinyApp(ui, server = server)
  
