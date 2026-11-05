# Load needed libraries
library("shiny")
library("bslib")

source("03_app_functions.R", local = TRUE)


source("03_app_ui.R", local = TRUE)

source("03_app_server.R", local = TRUE)

shinyApp(ui = ui, server = server)
