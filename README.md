# Programación I: introducción a R para el análisis de datos

Materiales de la asignatura **Programación I** del **Grado en Economía y Data Analytics** (UNAV), curso 2026/2027.

La asignatura es una introducción práctica al lenguaje **R** orientada al análisis de datos. Empieza por los tipos y estructuras de datos y los bloques básicos de programación, y llega al flujo de trabajo completo de un análisis: importar datos, visualizarlos con **ggplot2**, manipularlos con **dplyr**, limpiarlos, combinar tablas con joins, trabajar con **JSON** y **APIs**, y hacer un análisis exploratorio (EDA).

Este repositorio recoge el temario y guarda los materiales de clase: diapositivas (código fuente en Quarto y versión renderizada) y los datos necesarios para reproducirlas.

---

## Resultados de aprendizaje

Al terminar la asignatura sabrás:

- Usar **R** con un entorno de desarrollo (**RStudio** o **Positron**).
- **Importar datos** de distintas fuentes (CSV, Excel, JSON, APIs).
- **Tratar y analizar datos** y variables de distintos tipos.
- Aplicar **buenas prácticas de programación** en el análisis de datos.

---

## Estructura del repositorio

```
programacion-1-r/
├── temas/
│   ├── 01_introduccion_a_r/
│   ├── 02_funciones_condicionales_iteraciones/
│   ├── ...
│   └── 11_analisis_exploratorio_eda/
└── instalar_paquetes.R      # Instala los paquetes que se usan en el curso
```

Cada carpeta de `temas/` corresponde a una sesión y contiene:

- `.qmd`: código fuente de las diapositivas en **Quarto**. Se puede abrir, ejecutar y modificar en RStudio o Positron.
- `.pdf` / `.html`: versión renderizada, lista para leer.
- Los datos que usa esa sesión, cuando no vienen incluidos en un paquete de R.

---

## Temario

| # | Tema | Contenidos | Materiales |
|---|------|-----------|------------|
| 1 | **Introducción a R: tipos y estructuras de datos** | Operaciones básicas · variables y objetos · tipos de datos · vectores · listas · matrices · factores · data frames (crear, explorar, filtrar) · datasets predefinidos | [qmd](temas/01_introduccion_a_r/01_introduccion_a_r.qmd) · [pdf](temas/01_introduccion_a_r/01_introduccion_a_r.pdf) |
| 2 | **Funciones, condicionales e iteraciones** | Crear funciones · funciones anidadas · `if` / `if … else` · bucles `for` y `while` · `break` y `next` | [qmd](temas/02_funciones_condicionales_iteraciones/02_funciones_condicionales_iteraciones.qmd) · [pdf](temas/02_funciones_condicionales_iteraciones/02_funciones_condicionales_iteraciones.pdf) |
| 3 | **Importar datos** | Importar CSV y Excel (`read.csv()`, `readxl`) · explorar los datos tras importarlos · Kaggle como fuente de datos · CSV con formato europeo · buenas prácticas | [qmd](temas/03_importar_datos/03_importar_datos.qmd) · [pdf](temas/03_importar_datos/03_importar_datos.pdf) |
| 4 | **Visualización (I): la gramática de gráficos** | Sintaxis de ggplot2 · diagramas de dispersión · color y forma · facetas (`facet_wrap`, `facet_grid`) · suavizado · superposición de geometrías · barras y proporciones · boxplots | [qmd](temas/04_visualizacion_gramatica_graficos/04_visualizacion_gramatica_graficos.qmd) · [pdf](temas/04_visualizacion_gramatica_graficos/04_visualizacion_gramatica_graficos.pdf) |
| 5 | **Visualización (II): R base y ggplot2** | Gráficos en R base · R base frente a ggplot2 · histogramas · `coord_flip()` · títulos, ejes, temas y escalas de color · gráficos dentro de bucles | [qmd](temas/05_visualizacion_ggplot2/05_visualizacion_ggplot2.qmd) · [pdf](temas/05_visualizacion_ggplot2/05_visualizacion_ggplot2.pdf) |
| 6 | **Manipulación de datos con dplyr (I)** | La intuición de dplyr · los verbos básicos · el pipe `%>%` y los comandos encadenados · datos de vuelos `nycflights13` | [qmd](temas/06_manipulacion_datos_dplyr_I/06_manipulacion_datos_dplyr_I.qmd) · [html](temas/06_manipulacion_datos_dplyr_I/06_manipulacion_datos_dplyr_I.html) |
| 7 | **Manipulación de datos con dplyr (II)** | Práctica con pipelines · `filter()` con condiciones múltiples y `%in%` · `select()`, `arrange()`, `mutate()`, `summarise()` y `group_by()` | [qmd](temas/07_manipulacion_datos_dplyr_II/07_manipulacion_datos_dplyr_II.qmd) · [html](temas/07_manipulacion_datos_dplyr_II/07_manipulacion_datos_dplyr_II.html) |
| 8 | **Modificaciones básicas de datos** | Caso práctico de consumo eléctrico municipal · leer CSV con formato especial · limpiar números en formato europeo · `mutate()` + `across()` · crear variables y calcular promedios | [qmd](temas/08_modificaciones_basicas/08_modificaciones_basicas.qmd) · [pdf](temas/08_modificaciones_basicas/08_modificaciones_basicas.pdf) |
| 9 | **Joins: combinar datos** | `inner_join`, `left_join`, `right_join`, `full_join` · `merge()` · joins encadenados · eliminar duplicados con `distinct()` · `rbind()` y `cbind()` | [qmd](temas/09_joins/09_joins.qmd) · [pdf](temas/09_joins/09_joins.pdf) |
| 10 | **JSON y APIs** | Qué es JSON y cómo se organiza · leer y escribir JSON con `jsonlite` · aplanar JSON anidado (`flatten`, `unnest_wider`) · columnas-lista · caso práctico con datos de países · qué es una API y cómo se usa desde R (ejemplo con datos del Banco Mundial) · ejercicio de joins con datos de varias fuentes (CSV, Excel y JSON) | Guía JSON: [qmd](temas/10_json_apis/Guia_JSON_en_R.qmd) · [html](temas/10_json_apis/Guia_JSON_en_R.html)<br>Intro a APIs: [qmd](temas/10_json_apis/Intro_APIs.qmd) · [html](temas/10_json_apis/Intro_APIs.html)<br>Ejercicio: [pdf](temas/10_json_apis/Ejercicio_joins_JSON.pdf) |
| 11 | **Análisis exploratorio de datos (EDA)** | Pipeline completo de EDA con `nycflights13` · `skimr` · limpieza de nombres (`janitor`) y fechas (`lubridate`) · valores ausentes · análisis univariante, categórico y bivariante · composición de gráficos con `patchwork` | [qmd](temas/11_analisis_exploratorio_eda/11_analisis_exploratorio_eda.qmd) · [pdf](temas/11_analisis_exploratorio_eda/11_analisis_exploratorio_eda.pdf) |

---

DOI: https://doi.org/10.5281/zenodo.24468159



