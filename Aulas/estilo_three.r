#ui <- ui = fluidPage(theme = shinytheme("united"),
#theme = "mytheme.css",

library(shinythemes)
library(shiny)


ui = shiny::fluidPage(
  #shinythemes::themeSelector(), # Seleção de thema 
  theme = shinytheme("cyborg"),
  sidebarPanel(
    textInput("txt", "Text input:", "text here"),
    sliderInput("slider", "Slider input:", 1, 100, 30),
    actionButton("action", "Button"),
    actionButton("action2", "Button2", class = "btn-primary")
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Tab 1"),
      tabPanel("Tab 2")
    )
  )
)

server = function(input, output) {
  
}

shiny::shinyApp(ui, server)
