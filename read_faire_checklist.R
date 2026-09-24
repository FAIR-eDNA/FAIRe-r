read_faire_checklist <- function(FAIRe_checklist_ver = 'v1.0.2'){
  if (!requireNamespace("readxl", quietly = TRUE)) install.packages("readxl")
  library(readxl)
  source("https://raw.githubusercontent.com/FAIR-eDNA/FAIRe-r/main/download_faire_checklist.R")
  download_faire_checklist(FAIRe_checklist_ver = FAIRe_checklist_ver)
  checklist <- as.data.frame(readxl::read_excel(paste0("FAIRe_checklist_", FAIRe_checklist_ver, ".xlsx"), sheet = "checklist"))
  assign("checklist", checklist, envir = .GlobalEnv)
}