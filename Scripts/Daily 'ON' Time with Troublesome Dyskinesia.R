# Loading libraries
library("readxl")
library("meta")
library("metafor")
library("metasens")



# **ON with dyskinesia: Up to 13 weeks**
## Reading in data
data_dys1 <- read_xlsx("ON w dyskinesia up to 13 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_dys1)
str(data_dys1)

## Meta-analysis
mettadys1 <- metacont(n.e = n.e ,
                   mean.e = mean.e, 
                   sd.e = sd.e,
                   n.c = n.c, 
                   mean.c = mean.c, 
                   sd.c = sd.c, 
                   studlab = authors, 
                   data = data_dys1, 
                   sm = "SMD", # Standard mean difference
                   prediction = TRUE)
mettadys1
summary(mettadys1)

## Forest plot
forest(x = mettadys1, 
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
       smlab = "Daily 'ON' Time with \nTroublesome Dyskinesia (hours)", 
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



# **ON with dyskinesia: 12-16 weeks**
## Reading in data
data_dys3 <- read_xlsx("ON w dyskinesia 12-16 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_dys3)
str(data_dys3)

## Meta-analysis
mettadys3 <- metacont(n.e = n.e ,
                    mean.e = mean.e, 
                    sd.e = sd.e,
                    n.c = n.c, 
                    mean.c = mean.c, 
                    sd.c = sd.c, 
                    studlab = authors, 
                    data = data_dys3, 
                    sm = "SMD", # Standard mean difference
                    prediction = TRUE)
mettadys3
summary(mettadys3)

## Forest plot
forest(x = mettadys3, 
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
       smlab = "Daily 'ON' Time with \nTroublesome Dyskinesia (hours)", 
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