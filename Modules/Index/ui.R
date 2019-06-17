#######################################################################################
# The objective of the current file is to create a basic landing page for users.      #
# It will have the options and some basic help on usage.                              #
# It works in a centralized way: all UI will be called within this script as modules. #
# Each module is an independent block of ui.                                          #
# Only common design across modules will be explicit here.                            #
# Developed by: Cristobal Balladares                                                  #
# Contact: cr.balladares.m@gmail.com                                                  #
#######################################################################################

#Root Folder
RootFolder="DataAnalysisShiny/"
RootFolder=gsub(pattern=paste0(RootFolder, ".*"), replacement=RootFolder, x=getwd())

#Source Landing UI Module
source(paste0(RootFolder,"Modules/Landing_Page/Landing_ui.R"))

#Source Basic Analysis UI Module
source(paste0(RootFolder,"Modules/Basic_Analysis/Basic_Analysis_ui.R"))

#Load libraries
library(shiny)

#Landing UI
shinyUI(fluidPage(
  #CSS style
  includeCSS(paste0(RootFolder,"Modules/Landing_Page/CSS/basic.css")),
  
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
           #Landing page ui load space
           uiOutput(outputId="Landing.UI"),
           
           #Basic analysis ui load space
           uiOutput(outputId="Basic.Analysis.UI")
           
  )
  
))


