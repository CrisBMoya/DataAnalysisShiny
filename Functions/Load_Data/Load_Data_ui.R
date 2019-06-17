Load.Data.UI=function(id, label="Load.Data.UI"){
  ns=NS(id)
  
  fluidPage(
    fluidRow(
      
      #A box to load Data
      tags$div(id="Load.Data",
               
               sidebarLayout(
                 sidebarPanel(
                   #Select data
                   fileInput(inputId="Load.Table", label="Cargar Datos", 
                             accept=c(".txt",".csv",".xls",".xlsx"))
                 ),
                 
                 mainPanel(
                   #Space to show the table
                   tags$div(id="DivTable",
                            dataTableOutput(outputId="Loaded.Table"), 
                            style="width: 90%;
                            display: block;
                            margin-left: auto;
                            margin-right: auto;
                            font-size: 80%;
                            overflow-x: scroll;"
                   )
                 )
               )
      )
    )
  )
}

