# Aula 14 - ShinyWidgets & bootstrap
# Documentação HTML ShinyWidgets
# https://shinyapps.dreamrs.fr/shinyWidgets/
# https://getbootstrap.com/docs/4.0/components/badge/

library(shiny)

ui = shiny::fluidPage(
  sidebarLayout(sidebarPanel(), 
                
      mainPanel(
        
        switchInput(
          inputId = "Id014",
          onStatus = "success", 
          offStatus = "danger"
        ), 
        
        checkboxGroupButtons(
          inputId = "Id052",
          label = "Label",
          choices = c("A", 
                      "B", "C", "D"),
          status = "danger"
        )
        
        
      )
                
  )
)

server_shiny <- function(input, output){
  
  
}

shiny::shinyApp(ui, server)








