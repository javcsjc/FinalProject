library(shiny)
library(DT)
headcount <- read.csv("./data/Headcount.csv")

# Define a server for the Shiny app
shinyServer(function(input, output) {
        headcountInput <- reactive({
                data <- headcount
                if (input$region != "All") {
                        data <- data[data$Region == input$region,]
                }
                if (input$country != "All") {
                        data <- data[data$Country == input$country,]
                }
                if (input$state != "All") {
                        data <- data[data$State == input$state,]
                }
                data
        })
        
        # Filter data based on selections
        output$table <- DT::renderDataTable(DT::datatable({
                data <- headcount
                if (input$region != "All") {
                        data <- data[data$Region == input$region,]
                }
                if (input$country != "All") {
                        data <- data[data$Country == input$country,]
                }
                if (input$state != "All") {
                        data <- data[data$State == input$state,]
                }
                data
        }))
        # Generate a summary of the data
        output$summary <- renderPrint({
                summary(headcountInput())
        })
})