library(shiny)
# Define UI for app that draws a plot ----
ui <- fluidPage(
  
  # App title ----
  titlePanel("Which crimes are more correlated with murder rates in the US?"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    
    # Sidebar panel for inputs ----
    sidebarPanel(
      
    selectInput(
      inputId = "picked",
      label = "Crime:",
      choices = c("Assault", "Rape"),
      selected = "Assault",
      multiple = FALSE)
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(
      plotOutput(outputId = "distPlot")
      
    )
  )
)