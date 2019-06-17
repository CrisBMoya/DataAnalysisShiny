#Root Folder
RootFolder="DataAnalysisShiny/"
RootFolder=gsub(pattern=paste0(RootFolder, ".*"), replacement=RootFolder, x=getwd())


#Landing UI Module
Landing.UI=function(id, label="Landing.UI"){
  
  ns=NS(id)
  
  
  fluidPage(
    
    
    
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
}
