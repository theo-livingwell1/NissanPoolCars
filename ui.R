library(markdown)
library(ggplot2)
library(shiny)
library(datasets)
library(dplyr)

shinyUI(navbarPage("Nissan: choose a reliable pool car for your journey",
                   tabPanel("Pool Car Info Display",
                            
                            # Sidebar
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Where are you heading off to today? What experience would you like?"),
                                numericInput('dis', 'Estmated Distance (in miles):', 90, min = 10, max = 4000, step = 10),
                                numericInput('cost', 'Price of Gasoline (per gallon):', 1.41, min = 1, max = 4, step=0.01),
                                numericInput('gas', 'Estimated maximum cost of gasoline:', 70, min=8, max=1000, step = 8),
                                checkboxGroupInput('cyl', 'Number of cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
                                sliderInput('disp', 'Displacement', min=60, max=500, value=c(60,500), step=20),
                                sliderInput('hp', 'Gross horsepower', min=30, max=340, value=c(30,340), step=20),
                                checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1))
                              ),
                              
                              
                              mainPanel(
                                dataTableOutput('table'))
                              
                            )
                            
                   )
)
)