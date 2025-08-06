# Loading libraries
library("readxl")
library("meta")
library("metafor")
library("metasens")



# **UPDRS IV: Up to 13 weeks**
## Reading in data
data_IV1 <- read_xlsx("UPDRS IV up to 13 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_IV1)
str(data_IV1)

## Meta-analysis
mettaIV1 <- metacont(n.e = n.e ,
                   mean.e = mean.e, 
                   sd.e = sd.e,
                   n.c = n.c, 
                   mean.c = mean.c, 
                   sd.c = sd.c, 
                   studlab = authors, 
                   data = data_IV1, 
                   sm = "SMD", # Standard mean difference
                   prediction = TRUE)
mettaIV1
summary(mettaIV1)

## Forest plot
forest(x = mettaIV1, 
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
       smlab = "UPDRS/MDS-UPDRS IV score", 
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



# **UPDRS IV: Up to 16 weeks**
## Reading in data
data_IV2 <- read_xlsx("UPDRS IV up to 16 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_IV2)
str(data_IV2)

## Meta-analysis
mettaIV2 <- metacont(n.e = n.e ,
                    mean.e = mean.e, 
                    sd.e = sd.e,
                    n.c = n.c, 
                    mean.c = mean.c, 
                    sd.c = sd.c, 
                    studlab = authors, 
                    data = data_IV2, 
                    sm = "SMD", # Standard mean difference
                    prediction = TRUE)
mettaIV2
summary(mettaIV2)

## Forest plot
forest(x = mettaIV2, 
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
       smlab = "UPDRS/MDS-UPDRS IV score", 
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



# **UPDRS IV: 12-16 weeks**
## Reading in data
data_IV3 <- read_xlsx("UPDRS IV 12-16 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_IV3)
str(data_IV3)

## Meta-analysis
mettaIV3 <- metacont(n.e = n.e ,
                    mean.e = mean.e, 
                    sd.e = sd.e,
                    n.c = n.c, 
                    mean.c = mean.c, 
                    sd.c = sd.c, 
                    studlab = authors, 
                    data = data_IV3, 
                    sm = "SMD", # Standard mean difference
                    prediction = TRUE)
mettaIV3
summary(mettaIV3)

## Forest plot
forest(x = mettaIV3, 
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
       smlab = "UPDRS/MDS-UPDRS IV score", 
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



# **UPDRS IV: 24-38 weeks**
## An exploratory time period for this outcome only
## Reading in data
data_IV4 <- read_xlsx("UPDRS IV 24-38 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_IV4)
str(data_IV4)

## Meta-analysis
mettaIV4 <- metacont(n.e = n.e ,
                    mean.e = mean.e, 
                    sd.e = sd.e,
                    n.c = n.c, 
                    mean.c = mean.c, 
                    sd.c = sd.c, 
                    studlab = authors, 
                    data = data_IV4, 
                    sm = "SMD", # Standard mean difference
                    prediction = TRUE)
mettaIV4
summary(mettaIV4)

## Forest plot
forest(x = mettaIV4, 
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
       smlab = "UPDRS/MDS-UPDRS IV score", 
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



# **UPDRS IV: 38-101 weeks**
## Reading in data
data_IV5 <- read_xlsx("UPDRS IV 38-101 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_IV5)
str(data_IV5)

## Meta-analysis
mettaIV5 <- metacont(n.e = n.e ,
                    mean.e = mean.e, 
                    sd.e = sd.e,
                    n.c = n.c, 
                    mean.c = mean.c, 
                    sd.c = sd.c, 
                    studlab = authors, 
                    data = data_IV5, 
                    sm = "SMD", # Standard mean difference
                    prediction = TRUE)
mettaIV5
summary(mettaIV5)

## Forest plot
forest(x = mettaIV5, 
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
       smlab = "UPDRS/MDS-UPDRS IV score", 
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