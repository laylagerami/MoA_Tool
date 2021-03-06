# Script to install packages required

# CRAN
list.of.packages <- c("shiny","shinyjs","igraph","DT","miniUI","rhandsontable","shinyBS","shinythemes","shinyFiles","dplyr","tibble","ggplot2","visNetwork","shinyalert","shinyWidgets","lpSolve","sortable","colorspace","devtools","BiocManager")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

# Bioconductor
if (require(devtools)) install.packages("BiocManager")#if not already installed
list.of.packages <- c("org.Hs.eg.db","dorothea","progeny","CARNIVAL","HGNChelper","piano")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) BiocManager::install(new.packages)

devtools::install_github("zachcp/chemdoodle")
devtools::install_github("AnalytixWare/ShinySky")