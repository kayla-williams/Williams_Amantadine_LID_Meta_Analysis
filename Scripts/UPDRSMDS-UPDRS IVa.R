# Loading libraries
library("readxl")
library("meta")
library("metafor")
library("metasens")



# **UPDRS IVa subset: Up to 13 weeks**
## Reading in data
data_IVa1 <- read_xlsx("UPDRS IVa up to 13 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_IVa1)
str(data_IVa1)

## Meta-analysis
mettaIVa1 <- metacont(n.e = n.e ,
                    mean.e = mean.e, 
                    sd.e = sd.e,
                    n.c = n.c, 
                    mean.c = mean.c, 
                    sd.c = sd.c, 
                    studlab = authors, 
                    data = data_IVa1, 
                    sm = "SMD", # Standard mean difference
                    prediction = TRUE)
mettaIVa1
summary(mettaIVa1)

## Forest plot
forest(x = mettaIVa1, 
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
       smlab = "UPDRS/MDS-UPDRS IVa score", 
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

## Generating funnel plot to assess publication bias
funnel(mettaIVa1)



# **UPDRS IVa subset: 12-16 weeks**
## Reading in data
data_IVa2 <- read_xlsx("UPDRS IVa 12-16 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_IVa2)
str(data_IVa2)

## Meta-analysis
mettaIVa2 <- metacont(n.e = n.e ,
                    mean.e = mean.e, 
                    sd.e = sd.e,
                    n.c = n.c, 
                    mean.c = mean.c, 
                    sd.c = sd.c, 
                    studlab = authors, 
                    data = data_IVa2, 
                    sm = "SMD", # Standard mean difference
                    prediction = TRUE)
mettaIVa2
summary(mettaIVa2)

## Forest plot
forest(x = mettaIVa2, 
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
       smlab = "UPDRS/MDS-UPDRS IVa score", 
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