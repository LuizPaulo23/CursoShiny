# Aula 15 - ShinyAlert 

library(shiny)
# install.packages("shinyalert")
library(shinyalert)

ui = shiny::fluidPage(
  useShinyalert(), 
  actionButton("btn", 
               "Mostrar mensagem")
  
)

server <- function(input, output){
  
  observeEvent(input$btn, {
    
    shinyalert(title = "Mensagem de Erro", 
               type = "error")
    
  })
  
}

shiny::shinyApp(ui, server)


