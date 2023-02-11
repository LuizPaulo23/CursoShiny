rm(list = ls())

# Packages/bibliotecas 

library(shiny)
library(tidyverse)

# Primeiros Passos - Aula I

ui <- shiny::fluidPage(
  titlePanel("Hello, Shiny")
)

server <- function(input, output){
  
}

shiny::shinyApp(ui, server)

# Aula II - Estruturação de página 
ui = shiny::fluidPage(
  
  titlePanel("Estruturação"), # um parâmetro
  sidebarLayout(position = "left",
    sidebarPanel(h5("Nessa área ficarão os dados de input")
                 
      ),
    
    mainPanel(h5("Aqui ficarão colocados os elementos de saída")
   ),
  
 )
  
)

server <- function(input, output){
  
}

shiny::shinyApp(ui, server = server)

