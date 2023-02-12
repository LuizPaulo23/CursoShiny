# Aula 12 - Plotes 
rm(list = ls())

library(shiny)
library(ggplot2)

# Interface 

ui = shiny::fluidPage(
            sidebarLayout(sidebarPanel(
              
              sliderInput("slideID", 
                          label = "Selecione o tamanho da amostra", 
                          min = 10,
                          max = 5000, 
                          step = 10, 
                          value = FALSE)
              
            ), 
            
            mainPanel(
              
              plotOutput("hist")
              
            )
            
      )
  
)

server <- function(input, output){
  
 
  output$hist <- renderPlot(
    {
      
      lambda <- 0.5 # a taxa de eventos por período de tempo
      db_dist <- data.frame(dist_expo = rexp(input$slideID, rate = lambda))
      sw = shapiro.test(db_dist$dist_expo)
      
      ggplot2::ggplot() +
        aes(x =  db_dist$dist_expo) +
        geom_density(adjust = 1L, 
                     fill = "orange", 
                     alpha =.6, 
                     size = 0.1, 
                     col = "orange") +
        geom_vline(color="red", 
                   lwd = 2,
                   lty=1, 
                   xintercept = mean(db_dist$dist_expo))+
        labs(x = "", 
             y = "Densidade ",
             title = "Histograma - Distribuição exponencial com λ igual a 0.50", 
             subtitle = paste0("Test Shapiro-Wilk: (W = ", round(sw$statistic, 4), ", p-valor = ", round(sw$p.value, 4),")"),
             caption = "Elaboração de Luiz Paulo Tavares Gonçalves") +
        theme(plot.caption = element_text(hjust = 0))+
        theme_bw()
      
      
    }
  )
  
  
}

shiny::shinyApp(ui, server)

