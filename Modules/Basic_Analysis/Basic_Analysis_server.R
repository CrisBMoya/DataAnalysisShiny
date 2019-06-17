############################################
# Logic part of the basic analysis module. #
# Developed by: Cristobal Balladares       #
# Contact: cr.balladares.m@gmail.com       #
############################################

#Root Folder
RootFolder="DataAnalysisShiny/"
RootFolder=gsub(pattern=paste0(RootFolder, ".*"), replacement=RootFolder, x=getwd())

#Import module to load de data and its logic
output$Load.Data.UI=renderUI({Load.Data.UI(id="Load.Data.UI")})
source(file=paste0(RootFolder,"Functions/Load_Data/Load_Data_server.R"), local=TRUE)