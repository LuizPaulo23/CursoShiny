# Aula 09 - Slider 
rm(list = ls())
library(shiny)

ui <- shiny::fluidPage(
  titlePanel("Aula SliderInput"),
  sidebarLayout(sidebarPanel(
    sliderInput("idSlider", 
                "Informe a quantidade de dados da amostra", 
                min = 0, 
                max = 100, 
                step = 5, 
                value = FALSE)
    ), 
    
    mainPanel(textOutput("idSaidaSlider"))
    
  )
)



server <- function(input, output){
  
  output$idSaidaSlider <- renderText({
    input$idSlider
  })
  
}



shiny::shinyApp(ui, server = server)
