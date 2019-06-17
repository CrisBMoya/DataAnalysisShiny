###################################################################################
# This is the server script. It controls when and how logic are executed.         #
# As the ui contrapart in centralized this script should be used in the same way. #
# Logics specific to modules will be sources as well as ui.                       #
# The only direct logic in this script are related to the landing page.           #
# Developed by: Cristobal Balladares                                              #
# Contact: cr.balladares.m@gmail.com                                              #
###################################################################################

#Load libraries
library(shiny)

#Root Folder
RootFolder="DataAnalysisShiny/"
RootFolder=gsub(pattern=paste0(RootFolder, ".*"), replacement=RootFolder, x=getwd())

#Server
shinyServer(function(input, output, session){
  
  #Load Landing UI
  output$Landing.UI=renderUI({Landing.UI(id="Landing.UI")})
  
  #Option select
  observeEvent(input$Opt1, {
    #Delete old UI
    removeUI(selector="#Landing\\.UI")
    
    #Load UI and server for Opt1
    source(file=paste0(RootFolder,"/Modules/Basic_Analysis/Basic_Analysis_server.R"), local=TRUE)
    output$Basic.Analysis.UI=renderUI({Basic.Analysis.UI(id="Basic.Analysis.UI")})
  })
  
})