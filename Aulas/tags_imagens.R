# Aula 07 - inputs Imagens 

library(shiny)

ui = shiny::fluidPage(
  sidebarLayout(sidebarPanel(), 
  mainPanel(
    tags$img(src = "imagem01.png", 
             height = 300, 
             width = 300)
    )
   
  )
  
)

server = function(input, output){
  
}


shiny::shinyApp(ui, server)
