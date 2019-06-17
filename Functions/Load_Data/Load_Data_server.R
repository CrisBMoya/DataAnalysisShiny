library(data.table)
library(tidyverse)
library(DT)



#Load actual DF
observeEvent(input$Load.Table, {
  #Detect file type based on name
  FileType=unlist(strsplit(x=input$Load.Table$name, 
                           split="\\."))[length(unlist(strsplit(x=input$Load.Table$name, 
                                                                split="\\.")))]
  
  #Load input file based on extension
  if(FileType=="xlsx" | FileType=="xls"){
    #Get sheets names
    SheetsToLoad=openxlsx::getSheetNames(file=input$Load.Table$datapath)
    
    #Choose sheet
    showModal(modalDialog(footer=NULL, easyClose=FALSE, size="s",
                          
                          #Drowpdown to choose sheet
                          selectInput(inputId="SelectSheet", label="Elija la hoja a cargar:", 
                                      choices=SheetsToLoad,
                                      selected=SheetsToLoad[1]),
                          
                          #Button to acept
                          actionButton(inputId="LoadSheet", label="Cargar", style="display: block;")
    ))
    
    #Open table if sheet is selected
    UserTable=eventReactive(input$LoadSheet,{
      
      #Remove modal when button is pressed
      removeModal()
      
      #Load talbe
      UserTable=openxlsx::read.xlsx(xlsxFile=input$Load.Table$datapath, sheet=input$SelectSheet)
    })
    
    #Render table based on user input
    output$Loaded.Table=renderDataTable({
      #round(x=UserTable, digits=2)
      datatable(data=UserTable(), options=list(lengthMenu=c(5,10)))
    })
    
  } else if(FileType=="txt"){
    UserTable=read_delim(file=input$Load.Table$datapath, delim="\t")
    
    #Render table based on user input
    output$Loaded.Table=renderDataTable({
      datatable(data=UserTable, options=list(lengthMenu=c(5,10)))
    })
    
  } else if(FileType=="csv"){
    UserTable=read_delim(file=input$Load.Table$datapath, delim=",")
    
    #Render table based on user input
    output$Loaded.Table=renderDataTable({
      #round(x=UserTable, digits=2)
      datatable(data=UserTable, options=list(lengthMenu=c(5,10)))
    })
  }
})