uitpSummaryStatistics <-
  tabPanel(
    "Summary Statistics and Plots",

    # Side Panel
    # div(
    #  style = paste(
    #    "float: left; width: 400px; height: 76vh; padding: 10px;",
    #    "border: 1px solid lightgray; background-color: #EDEDED;",
    #    "margin-left: 3px; margin-top: 3px; margin-bottom: 3px;",
    #    "border-radius: 25px; box-shadow: 0 0 5px 2px #888"
    #  ),
   fluidRow(
     column(10, offset = 1,
            style = paste(
             "border: 1px solid lightgray; background-color: #EDEDED;",
             "border-radius: 25px; box-shadow: 0 0 5px 2px #888"
            ),
            withMathJax(includeHTML("../extdata/summary_stats.html"))
     )),
   br(),
   fluidRow(
      column(1, offset = 1,
             popify(downloadButton("downloadKinship", "Export Kinship Matrix"),
                    NULL, #"Exports Kinship Matrix as CSV",
                    paste0("This exports the kinship matrix to a CSV file ",
                           "in the users home directory"))),
     column(1, offset = 1,
            popify(downloadButton("downloadMaleFounders",
                                  "Export Male Founders"),
                   NULL, #"Exports Male Founder records as CSV",
                   paste0("This exports the male founder pedigree records to ",
                          "a CSV file to the user selected directory."))),
     column(1, offset = 1,
            popify(downloadButton("downloadFemaleFounders",
                                  "Export Female Founders"),
                   NULL, #"Exports Female Founder records as CSV",
                   paste0("This exports the female founder pedigree records ",
                          "to a CSV file to the user selected directory."))),
     column(2,
            offset = 1,
            popify(downloadButton("downloadFirstOrder",
                                  "Export First-Order Relationships"),
             NULL, #"Exports All First-Order Relationships as CSV",
             paste0("This exports all first-order relations to a CSV file ",
                    "to the user selected directory.")))
    ),
   br(),
   # fluidRow(
   #   column(2, offset = 1,
   #        style = paste0("padding-top:1px;display:inline-block;",
   #                       "padding-bottom:1px"),
   #        checkboxInput("displayRelations",
   #                      label = paste0("Optional: Display ",
   #                                     "Relations Table"),
   #                      width = "150%",
   #                      value = FALSE)
   # )),
   fluidRow(
     column(10, offset = 1,
            htmlOutput("summaryStats")
     ),
   #   column(10, offset = 1,
   #          DT::dataTableOutput("relations")
   #          # DT::dataTableOutput("relations"),
   #          # DT::dataTableOutput("maleFounders"),
   #          # DT::dataTableOutput("femaleFounders")
   #   ),
   ),br(),br(),
   fluidRow(
    # Main Panel
    column(5, offset = 1,
      # style = "margin-left:425px;padding:10px;",
      plotOutput("mkHist", width = "400px", height = "400px"),
      br(),
      popify(downloadButton("downloadMeanKinshipCoefficientHistogram",
                          "Export Mean Kinship Coefficient histogram"),
           NULL, #"Export Mean Kinship Coefficient histogram as PNG file",
           paste0("This exports the Mean Kinship Coefficient histogram as a ",
                  "PNG file to the user selected directory.")),
      br(), br(),
      plotOutput("zscoreHist", width = "400px", height = "400px"),
      br(),
      popify(downloadButton("downloadZScoreHistogram",
                           "Export Z-Score histogram"),
            NULL, #"Exports Mean Kinship Z-score histogram as PNG file",
            paste0("This exports the Mean Kinship Z-score histogram as ",
                   "a PNG file to the user selected directory.")),
      br(), br(),
      plotOutput("guHist", width = "400px", height = "400px"),
      br(),
      popify(downloadButton("downloadGenomeUniquenessHistogram",
                            "Export Genome Uniqueness histogram"),
            NULL, #"Exports Genome Uniqueness histogram as PNG file",
            paste0("This exports the Genome Uniqueness histogram as PNG file ",
                   "to the user selected directory.")),
      br()),
    column(5,
           plotOutput("mkBox", width = "400px", height = "400px"),
           br(),
           popify(downloadButton("downloadMeanKinshipCoefficientBoxPlot",
                                 "Export Mean Kinship Coefficient box plot"),
                  NULL, #"Export Mean Kinship Coefficient box plot as PNG file",
                  paste0("This Mean Kinship Coefficient box plot as PNG file ",
                         "to the user selected directory.")),
           br(), br(),
           plotOutput("zscoreBox", width = "400px", height = "400px"),
           br(),
           popify(downloadButton("downloadZScoreBoxPlot",
                                 "Export Z-Score box plot"),
                  NULL, #"Export Mean Kinship Z-score box plot as PNG file",
                  paste0("This exports the Mean Kinship Z-score box plot as ",
                         "a PNG file to the user selected directory.")),
           br(), br(),
           plotOutput("guBox", width = "400px", height = "400px"),
           br(),
           popify(downloadButton("downloadGenomeUniquenessBoxPlot",
                                 "Export Genome Uniqueness box plot"),
                  NULL, #"Export Genome Uniqueness box plot as PNG file",
                  paste0("This exports Genome Uniqueness box plot as a PNG ",
                         "file to the user selected directory.")),
           br(), br())
   ),
   fluidRow(
     column(10, offset = 1,
            style = paste(
              "border: 1px solid lightgray; background-color: #EDEDED;",
              "border-radius: 25px; box-shadow: 0 0 5px 2px #888"
            ),
            withMathJax(
              includeHTML("../extdata/population_genetics_terms.html"))
     ))

)
