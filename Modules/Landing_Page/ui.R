###################################################################################
# The objective of the current file is to create a basic landing page for users.  #
# It will have the options and some basic help on usage.                          #
# Developed by: Cristobal Balladares                                              #
# Contact: cr.balladares.m@gmail.com                                              #
###################################################################################

#Load libraries
library(shiny)

#Landing UI
shinyUI(fluidPage(
  #CSS style
  includeCSS(paste0(getwd(),"/CSS/basic.css")),
  
  #Page Upper Banner
  tags$div(id="MainBanner", #style="background-color: #336699",
           tags$ul(id="BannerP1", style="list-style-type: none;
                                        margin: 0;
                                        padding: 0;
                                        overflow: hidden;
                                        background-color: #333;",
                   tags$li(tags$a("Text1"), style="float: left;"),
                   tags$li(tags$a("Text2"), style="float: left;"),
                   tags$li(tags$a("Text3"), style="float: left;")
           )),
  
  #Main div -- A box
  tags$div(id="Main", style="display: block;
                            margin-left: 10%;
                            margin-right: 10%;
                            margin-top: 2%;",
           
           #Title
           tags$h2("A title."),
           
           #Split layout to put all the options
           splitLayout(
             #Basic analysis
             tags$div(id="borderBox",
                      tags$h4("Análisis básicos", style="text-align: center;"),
                      tags$hr(),
                      tags$ul(style="background-color: white;",
                              tags$li("asd"),
                              tags$li("asd"),
                              tags$li("asd"),
                              tags$li("asd")
                      ),
                      actionButton(inputId="Opt1", label="Opt1")
             ),
             #Basic analysis
             tags$div(id="borderBox",
                      tags$h4("PLS Metabolitos", style="text-align: center;"),
                      tags$hr(),
                      tags$ul(style="background-color: white;",
                              tags$li("asd"),
                              tags$li("asd"),
                              tags$li("asd"),
                              tags$li("asd")
                      ),
                      actionButton(inputId="Opt2", label="Opt2")
             ),
             #Basic analysis
             tags$div(id="borderBox",
                      tags$h4("Análisis expresión diferencial", style="text-align: center;"),
                      tags$hr(),
                      tags$ul(style="background-color: white;",
                              tags$li("asd"),
                              tags$li("asd"),
                              tags$li("asd"),
                              tags$li("asd")
                      ),
                      actionButton(inputId="Opt3", label="Opt3")
             )
           )
  )
  
  
  
))


