
library(ggpmisc)

server <- function(input, output) {

  output$distPlot <- renderPlot({
    req(input$picked)
    ggplot(USArrests, aes(x=Murder, y=.data[[input$picked]]))+geom_point()+stat_smooth(method="lm")+
      stat_poly_eq(formula =  y ~ x, 
                   aes(label = paste(..eq.label.., ..rr.label.., sep = "~~~")), 
                   parse = T)  
    
    
  })
  
}


