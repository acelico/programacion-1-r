# Paquetes utilizados en la asignatura Programación I
# Ejecutar una sola vez: source("instalar_paquetes.R")

paquetes <- c(
  "tidyverse",     # dplyr, ggplot2, readr, tidyr, purrr...
  "readxl",        # importar Excel
  "nycflights13",  # datos de vuelos de NYC (2013)
  "summarytools",  # resúmenes descriptivos
  "lubridate",     # fechas y horas
  "janitor",       # limpieza de nombres de columnas
  "skimr",         # resumen rápido de datasets
  "patchwork",     # combinar gráficos de ggplot2
  "jsonlite"       # leer y escribir JSON
)

nuevos <- setdiff(paquetes, rownames(installed.packages()))
if (length(nuevos) > 0) install.packages(nuevos)
