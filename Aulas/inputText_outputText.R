# Aula 3 --- inputText & outputText
# main area = saida 

library(shiny)

ui = shiny::fluidPage(
  titlePanel("Entrada e saída de dados"), 
  
  sidebarLayout( # Lateral 
    sidebarPanel( # input
      textInput("idEntradaTexto", 
                "Informe um texto")
      
    ), 
    mainPanel(
      textOutput("idSaidaTexto")
    )
  )
)

server <- function(input, output){
  output$idSaidaTexto <- renderText({input$idEntradaTexto})
}


shinyApp(ui, server = server)



