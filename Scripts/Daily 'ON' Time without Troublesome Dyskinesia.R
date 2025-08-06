# Loading libraries
library("readxl")
library("meta")
library("metafor")
library("metasens")



# **ON without dyskinesia: Up to 13 weeks**
## Reading in data
data_nodys1 <- read_xlsx("ON wo dyskinesia up to 13 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_nodys1)
str(data_nodys1)

## Meta-analysis
mettanodys1 <- metacont(n.e = n.e ,
                   mean.e = mean.e, 
                   sd.e = sd.e,
                   n.c = n.c, 
                   mean.c = mean.c, 
                   sd.c = sd.c, 
                   studlab = authors, 
                   data = data_nodys1, 
                   sm = "SMD", # Standard mean difference
                   prediction = TRUE)
mettanodys1
summary(mettanodys1)

## Forest plot
forest(x = mettanodys1, 
       random = T, 
       common = F, 
       layout = "RevMan5", 
       col.diamond.random = "Green", 
       col.random = "Green",
       col.square = "Blue", 
       col.square.lines = "Blue",
       col.study = "Blue",
       text.random = "Mean difference (random effects model)",
       digits = 2, digits.se = 2,
       smlab = "Daily 'ON' Time without \nTroublesome Dyskinesia (hours)", 
       pooled.events = T, 
       text.addline1 = "Inverse variance method", 
       text.addline2 = "Restricted maximum likelihood-estimator for tau^2, Q-Profile method for CI of tau^2", 
       header.line = "both", 
       label.e = "Amantadine", 
       label.c = "Control", 
       label.left = "Favours amantadine", 
       label.right = "Favours control", 
       sortvar = studlab
)



# **ON without dyskinesia: 12-16 weeks**
## Reading in data
data_nodys2 <- read_xlsx("ON wo dyskinesia 12-16 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_nodys2)
str(data_nodys2)

## Meta-analysis
mettanodys2 <- metacont(n.e = n.e ,
                    mean.e = mean.e, 
                    sd.e = sd.e,
                    n.c = n.c, 
                    mean.c = mean.c, 
                    sd.c = sd.c, 
                    studlab = authors, 
                    data = data_nodys2, 
                    sm = "SMD", # Standard mean difference
                    prediction = TRUE)
mettanodys2
summary(mettanodys2)

## Forest plot
forest(x = mettanodys2, 
       random = T, 
       common = F, 
       layout = "RevMan5", 
       col.diamond.random = "Green", 
       col.random = "Green",
       col.square = "Blue", 
       col.square.lines = "Blue",
       col.study = "Blue",
       text.random = "Mean difference (random effects model)",
       digits = 2, digits.se = 2,
       smlab = "Daily 'ON' Time without \nTroublesome Dyskinesia (hours)", 
       pooled.events = T, 
       text.addline1 = "Inverse variance method", 
       text.addline2 = "Restricted maximum likelihood-estimator for tau^2, Q-Profile method for CI of tau^2", 
       header.line = "both", 
       label.e = "Amantadine", 
       label.c = "Control", 
       label.left = "Favours amantadine", 
       label.right = "Favours control", 
       sortvar = studlab
)