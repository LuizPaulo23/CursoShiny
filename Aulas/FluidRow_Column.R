# Aula 15 - FluidRow & Column

library(shiny)

ui = shiny::fluidPage(
  # 
  fluidRow(
  column(style = "", 
         width = 4, "conteudo"), 
  column(style = "", 
         width = 4, "conteudo"), 
  column(style = "", 
         width = 4, "conteudo")
  
), 

fluidRow(column(style = "", 
                width = 4, "conteudo"), 
         column(style = "", 
                width = 4, "conteudo"), 
         column(style = "", 
                width = 4, "conteudo")
      )
)

server <- function(input, output){
  
  
}


shiny::shinyApp(ui, server)
