download_faire_FULLtemplate <- function(FAIRe_checklist_ver = 'v1.0.2') {
  url_repo <- "https://raw.githubusercontent.com/FAIR-eDNA/FAIRe_checklist/main/"
  name_template <- paste0("FAIRe_checklist_", FAIRe_checklist_ver, "_FULLtemplate.xlsx")
  if (file.exists(name_template)) {
    message("Template with most recent version already exists")
  } else {
    download.file(url = paste0(url_repo, name_template), destfile = name_template, mode = "wb")
  }
}
