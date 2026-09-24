read_faire_checklist <- function(FAIRe_checklist_ver = 'v1.0.2'){
  if (!requireNamespace("readxl", quietly = TRUE)) install.packages("readxl")
  library(readxl)
  # Download the checklist (.xlsx) in the working directory 
  source("https://raw.githubusercontent.com/FAIR-eDNA/FAIRe-r/main/download_faire_checklist.R")
  download_faire_checklist(FAIRe_checklist_ver = FAIRe_checklist_ver)
  # Read the Excel checklist file
  checklist <- as.data.frame(readxl::read_excel(paste0("FAIRe_checklist_", FAIRe_checklist_ver, ".xlsx"), sheet = "checklist"))
  # Assign
  assign("checklist", checklist, envir = .GlobalEnv)
}
