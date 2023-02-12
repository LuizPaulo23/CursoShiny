# Aula 10 - CheckBox 
rm(list = ls())
library(shiny)

ui <- shiny::fluidPage(
             sidebarLayout(sidebarPanel(
               checkboxGroupInput("idCheckBox", 
                                  "Selecione os produtos", 
                                  list("TV" = 1, 
                                       "Celualr"  = 2, 
                                       "Notebook" = 3))
             ),
             
             mainPanel(
               
               actionButton("salvarProduto", 
                            "Chique")
               
             )
        )
  )


server <- function(input, output){
  observeEvent(input$salvarProduto, 
               {opcoes = as.data.frame(input$idCheckBox)
               print(opcoes)})
}

shiny::shinyApp(ui, server)



