---
  title: "RAF Gesamtnetzwerk"
author: "Hannah Bauer"
date: "9 3 2020"
output: pdf_document
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r}

# Skript Erstellung einfaches Netzwerk

# lädt igraph Bibliothek (ggf. vorher installieren)
library(igraph)

# erhöht das limit auf 10000000
options(max.print=1000000)

# liest die Edgelist als "el" ein
el <- read.csv("https://raw.githubusercontent.com/ca048/RAF-Forschungsdesign/master/edges.csv", header=T, as.is=T, sep = ",", row.names=NULL)


# zeigt die ersten sechs Zeilen des Datensatzes an
head(el)

# liest die Nodelist mit den Namen ein
nodes <- read.csv("https://raw.githubusercontent.com/ca048/RAF-Forschungsdesign/master/nodes.csv", header=T, as.is=T, sep = ",")

# zeigt die ersten sechs Zeilen der Nodelist und die Attribute der Nodes an
head(nodes)

# Zwischenschritt verbindet die Edge- und Nodelist zu einer Matrix
raf_matrix <- as.matrix(el)

# zeigt die Matrix an
raf_matrix

# generiert ein igraph-Objekt (dataframe) aus der Matrix, das gerichtet ist (directed = true)
raf <- graph_from_data_frame(d=raf_matrix, directed=FALSE)

# ruft unser neues igraph-Objekt auf
raf

# stellt die Art der Beziehung farblich da
E(raf)[E(raf)$relationship == 1]$color <-"red"
E(raf)[E(raf)$relationship == 2]$color <-"darkgreen"
E(raf)[E(raf)$relationship == 3]$color <-"blue"
E(raf)[E(raf)$relationship == 4]$color <-"yellow"
E(raf)[E(raf)$relationship == 5]$color <-"purple"
E(raf)[E(raf)$relationship == 6]$color <-"pink"
E(raf)[E(raf)$relationship == 7]$color <-"chartreuse"
E(raf)[E(raf)$relationship == 8]$color <-"cyan"
E(raf)[E(raf)$relationship == 9]$color <-"darkslateblue"
E(raf)[E(raf)$relationship == 10]$color <-"springgreen" 

# generiert die Standard-Visualisierung des Netzwerks
#plot(raf)

#degree <- degree(raf)
#degree



# einfacher plot
plot(raf,
     layout=layout_nicely,
     main="RAF-Netzwerk")

```