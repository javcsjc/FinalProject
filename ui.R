library(shiny)
library(DT)
headcount <- read.csv("./data/Headcount.csv")

# Define the overall UI
shinyUI(
        fluidPage(
                titlePanel("Headcount Analysis"),
                sidebarLayout(
                        sidebarPanel(
                                selectInput("region",
                                            "Region:",
                                            c("All",
                                              unique(as.character(headcount$Region)))),
                                br(),
                                selectInput("country",
                                            "Country:",
                                            c("All",
                                              unique(as.character(headcount$Country)))),
                                br(),
                                selectInput("state",
                                            "State:",
                                            c("All",
                                              unique(as.character(headcount$State))))
                        ),
                        
                        # Show a tabset that includes a plot, summary, and table view
                        # of the generated distribution
                        mainPanel(
                                tabsetPanel(type = "tabs", 
                                            tabPanel("Table", DT::dataTableOutput("table")),
                                            tabPanel("Summary", verbatimTextOutput("summary"))
                                )
                        )
                )
        ))