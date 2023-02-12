# Aula 12 - Tags HTML 

library(shiny)

ui <- shiny::fluidPage(
  sidebarLayout(
    sidebarPanel(), 
    mainPanel(
      
      tags$code("if x > 10 Then"), 
      tags$p("Aqui será um paragrafo"),
      tags$h1("Texto que possui o tamanho de h1"), # Do maior para o menor
      tags$h2("Texto que possui o tamanho de h2"),
      tags$h3("Texto que possui o tamanho de h3"), 
      tags$h4("Texto que possui o tamanho de h4"), 
      tags$h5("Texto que possui o tamanho de h5"), 
      tags$h6("Texto que possui o tamanho de h6"),
      tags$strong("Um texto em negrito"), 
      tags$br(), # quebra linha
      tags$em("Um texto em itálico"), 
      tags$br(),
      tags$u("Um texto sublinhado"), 
      tags$br(),
      tags$label("Informe o seu problema no campo abaixo: "),
      
      tags$p("Teste com estilo", 
             style = "color:blue"), 
      
      HTML("<p><h1> Teste com tag HTML </h1></p>"),
      
      # Tags Div 
      
      tags$div(style = "background-color: #00BFFF; text-align:center", 
               tags$p("Texto que está dentro da Div")
               ), 
      
      
      tags$label("Informe o seu problema"), 
      tags$textarea("idTextoArea", 
                    rows = 3, 
                    cols = 5)
      
    )
  )
)

server <- function(input, output){
  
}

shiny::shinyApp(ui, server)

