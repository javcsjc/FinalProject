Headcount Analysis - Course Project for Shiny Application
========================================================
author: Jose Alberto Valdez Crespo
date: January 30, 2016

Project Overview
========================================================

This app provides dymanic filtering of a headcount file based on Geographical Region, Country & State. It has a couple of tabs that represent a dynamic table view of the data, plus a summary view.

- Source file "Headcount.csv" was built in-house. Not from a public source.
- Shiny apps address:http://javcsjc.shinyapps.io/FinalProject
- gitHub address:


ui.R
========================================================


```r
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
```

<!--html_preserve--><div class="container-fluid">
<h2>Headcount Analysis</h2>
<div class="row">
<div class="col-sm-4">
<form class="well">
<div class="form-group shiny-input-container">
<label class="control-label" for="region">Region:</label>
<div>
<select id="region"><option value="All" selected>All</option>
<option value="AMERICAS">AMERICAS</option>
<option value="EMEA">EMEA</option>
<option value="APJC">APJC</option></select>
<script type="application/json" data-for="region" data-nonempty="">{}</script>
</div>
</div>
<br/>
<div class="form-group shiny-input-container">
<label class="control-label" for="country">Country:</label>
<div>
<select id="country"><option value="All" selected>All</option>
<option value="UNITED STATES">UNITED STATES</option>
<option value="UNITED KINGDOM">UNITED KINGDOM</option>
<option value="AUSTRALIA">AUSTRALIA</option>
<option value="INDIA">INDIA</option>
<option value="SINGAPORE">SINGAPORE</option>
<option value="CANADA">CANADA</option>
<option value="NORWAY">NORWAY</option>
<option value="CHINA">CHINA</option>
<option value="SERBIA">SERBIA</option>
<option value="IRELAND">IRELAND</option>
<option value="SWEDEN">SWEDEN</option>
<option value="NETHERLANDS">NETHERLANDS</option>
<option value="JAPAN">JAPAN</option>
<option value="GERMANY">GERMANY</option>
<option value="SPAIN">SPAIN</option>
<option value="MALAYSIA">MALAYSIA</option>
<option value="MEXICO">MEXICO</option>
<option value="BULGARIA">BULGARIA</option>
<option value="HONG KONG">HONG KONG</option>
<option value="FRANCE">FRANCE</option>
<option value="ITALY">ITALY</option>
<option value="NEW ZEALAND">NEW ZEALAND</option>
<option value="SWITZERLAND">SWITZERLAND</option>
<option value="VIET NAM">VIET NAM</option>
<option value="SOUTH AFRICA">SOUTH AFRICA</option>
<option value="POLAND">POLAND</option>
<option value="TAIWAN">TAIWAN</option>
<option value="BELGIUM">BELGIUM</option>
<option value="RUSSIAN FEDERATION">RUSSIAN FEDERATION</option>
<option value="BRAZIL">BRAZIL</option></select>
<script type="application/json" data-for="country" data-nonempty="">{}</script>
</div>
</div>
<br/>
<div class="form-group shiny-input-container">
<label class="control-label" for="state">State:</label>
<div>
<select id="state"><option value="All" selected>All</option>
<option value="CALIFORNIA">CALIFORNIA</option>
<option value="NORTH CAROLINA">NORTH CAROLINA</option>
<option value="ILLINOIS">ILLINOIS</option>
<option value="ENGLAND">ENGLAND</option>
<option value="NEW SOUTH WALES">NEW SOUTH WALES</option>
<option value="COLORADO">COLORADO</option>
<option value="TEXAS">TEXAS</option>
<option value="MASSACHUSETTS">MASSACHUSETTS</option>
<option value="KARNATAKA">KARNATAKA</option>
<option value="NEW YORK">NEW YORK</option>
<option value="GEORGIA">GEORGIA</option>
<option value="HARYANA">HARYANA</option>
<option value="SINGAPORE">SINGAPORE</option>
<option value="WASHINGTON">WASHINGTON</option>
<option value="ONTARIO">ONTARIO</option>
<option value="OSLO">OSLO</option>
<option value="SHANGHAI">SHANGHAI</option>
<option value="NEW JERSEY">NEW JERSEY</option>
<option value="INDIANA">INDIANA</option>
<option value="SERBIA">SERBIA</option>
<option value="MARYLAND">MARYLAND</option>
<option value="CONNACHT">CONNACHT</option>
<option value="DELHI">DELHI</option>
<option value="TAMIL NADU">TAMIL NADU</option>
<option value="STOCKHOLMS">STOCKHOLMS</option>
<option value="VIRGINIA">VIRGINIA</option>
<option value="GUANGDONG">GUANGDONG</option>
<option value="NOORD-HOLLAND">NOORD-HOLLAND</option>
<option value="MICHIGAN">MICHIGAN</option>
<option value="ALBERTA">ALBERTA</option>
<option value="OREGON">OREGON</option>
<option value="OHIO">OHIO</option>
<option value="ZHEJIANG">ZHEJIANG</option>
<option value="JIANGSU">JIANGSU</option>
<option value="ANHUI">ANHUI</option>
<option value="MAHARASHTRA">MAHARASHTRA</option>
<option value="KANTO">KANTO</option>
<option value="BERLIN">BERLIN</option>
<option value="CATALUNA">CATALUNA</option>
<option value="VERMONT">VERMONT</option>
<option value="KANSAS">KANSAS</option>
<option value="ARIZONA">ARIZONA</option>
<option value="FLORIDA">FLORIDA</option>
<option value="KUALA LUMPUR">KUALA LUMPUR</option>
<option value="MINNESOTA">MINNESOTA</option>
<option value=""></option>
<option value="DISTRITO FEDERAL">DISTRITO FEDERAL</option>
<option value="BEIJING">BEIJING</option>
<option value="NEVADA">NEVADA</option>
<option value="PENNSYLVANIA">PENNSYLVANIA</option>
<option value="GRAD SOFIYA">GRAD SOFIYA</option>
<option value="HONG KONG">HONG KONG</option>
<option value="PROVENCE-ALPES-COTE D'AZUR">PROVENCE-ALPES-COTE D'AZUR</option>
<option value="MISSISSIPPI">MISSISSIPPI</option>
<option value="OKLAHOMA">OKLAHOMA</option>
<option value="BRITISH COLUMBIA">BRITISH COLUMBIA</option>
<option value="MADRID">MADRID</option>
<option value="BADEN-WURTTEMBERG">BADEN-WURTTEMBERG</option>
<option value="LOMBARDIA">LOMBARDIA</option>
<option value="WAIKATO">WAIKATO</option>
<option value="LEINSTER">LEINSTER</option>
<option value="VAUD">VAUD</option>
<option value="HO CHI MINH">HO CHI MINH</option>
<option value="TENNESSEE">TENNESSEE</option>
<option value="WESTERN CAPE">WESTERN CAPE</option>
<option value="ZURICH">ZURICH</option>
<option value="WARSZAWA">WARSZAWA</option>
<option value="ILE DE FRANCE">ILE DE FRANCE</option>
<option value="T'AI-PEI SHIH">T'AI-PEI SHIH</option>
<option value="BRABANT">BRABANT</option>
<option value="ANDHRA PRADESH">ANDHRA PRADESH</option>
<option value="HESSEN">HESSEN</option>
<option value="BRUXELLES-BRUSSEL">BRUXELLES-BRUSSEL</option>
<option value="SAO PAULO">SAO PAULO</option></select>
<script type="application/json" data-for="state">{}</script>
</div>
</div>
</form>
</div>
<div class="col-sm-8">
<div class="tabbable tabs-above">
<ul class="nav nav-tabs">
<li class="active">
<a href="#tab-7619-1" data-toggle="tab" data-value="Table">Table</a>
</li>
<li>
<a href="#tab-7619-2" data-toggle="tab" data-value="Summary">Summary</a>
</li>
</ul>
<div class="tab-content">
<div class="tab-pane active" data-value="Table" id="tab-7619-1">
<div id="table" style="width:100%; height:auto" class="datatables html-widget html-widget-output"></div>
</div>
<div class="tab-pane" data-value="Summary" id="tab-7619-2">
<pre id="summary" class="shiny-text-output"></pre>
</div>
</div>
</div>
</div>
</div>
</div><!--/html_preserve-->

server.R
========================================================


```r
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
```

Last Thoughts
========================================================

- Started working on a Machine Learning comparison project, but ran into a couple of problems: 1.- Since I was comparing multiple algorithms, it took too long to run.Tried different things but none work as I expected 2.- ERROR: cannot coerce type 'closure' to vector of type 'character'.
- Had to switch to another project at the very last minute. On this one, tried hard to create a ggplot of the dynamic data but ran into errors like: "ggplot2 doesn't know how to deal with data of class reactive".Just simply ran out of time.
- Good luck everyone!
