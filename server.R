library(ggplot2)
library(shiny)
library(datasets)
library(dplyr)
library(markdown)

shinyServer(function(input, output) {
  
  # Display the relevant cars when filtering is applied
  
  output$table <- renderDataTable({
    disp_seq <- seq(from = input$disp[1], to = input$disp[2], by = 0.1)
    hp_seq <- seq(from = input$hp[1], to = input$hp[2], by = 1)
    figures <- transmute(mtcars, Car = rownames(mtcars), MilesPerGallon = mpg, 
                         GasolineExpenditure = input$dis/mpg*input$cost,
                         Cylinders = cyl, Displacement = disp, Horsepower = hp, 
                         Transmission = am)
    figures <- filter(figures, GasolineExpenditure <= input$gas, Cylinders %in% input$cyl, 
                      Displacement %in% disp_seq, Horsepower %in% hp_seq, Transmission %in% input$am)
    figures <- mutate(figures, Transmission = ifelse(Transmission==0, "Automatic", "Manual"))
    figures <- arrange(figures, GasolineExpenditure)
    figures
  }, options = list(lengthMenu = c(5, 15, 30), pageLength = 30))
})