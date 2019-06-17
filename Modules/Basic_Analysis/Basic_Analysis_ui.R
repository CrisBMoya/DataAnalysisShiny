#########################################
# UI part of the basic analysis module. #
# Developed by: Cristobal Balladares    #
# Contact: cr.balladares.m@gmail.com    #
#########################################

#Root Folder
RootFolder="DataAnalysisShiny/"
RootFolder=gsub(pattern=paste0(RootFolder, ".*"), replacement=RootFolder, x=getwd())

#Source Load Data UI
source(paste0(RootFolder,"Functions/Load_Data/Load_Data_ui.R"))

Basic.Analysis.UI=function(id, label="Basic.Analysis.UI"){
  ns=NS(id)
  
  #Fluid page necesary to import more than one ui as a block
  fluidPage(
    uiOutput(outputId="Load.Data.UI")
  )
  
}