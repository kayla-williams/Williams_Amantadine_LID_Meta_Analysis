# Loading libraries
library("readxl")
library("meta")
library("metafor")
library("metasens")



# **UPDRS III: Up to 13 weeks**
## Reading in data
data_III1 <- read_xlsx("UPDRS III up to 13 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_III1)
str(data_III1)

## Meta-analysis
mettaIII <- metacont(n.e = n.e ,
                   mean.e = mean.e, 
                   sd.e = sd.e,
                   n.c = n.c, 
                   mean.c = mean.c, 
                   sd.c = sd.c, 
                   studlab = authors, 
                   data = data_III1, 
                   sm = "SMD", # Standard mean difference
                   prediction = TRUE)
mettaIII
summary(mettaIII)

## Forest plot
forest(x = mettaIII, 
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
       smlab = "UPDRS/MDS-UPDRS III score", 
       pooled.events = T, 
       text.addline1 = "Inverse variance method", 
       text.addline2 = "Restricted maximum likelihood-estimator for tau^2, Q-Profile method for CI of tau^2", 
       header.line = "both", 
       label.e = "Amantadine", 
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
       sortvar = studlab
)

## Generating funnel plot to assess publication bias
funnel(mettaIII)



## **Subgroup analysis for dosage - 13 weeks**
## Meta-analysis
metta.IIId <- update(object = mettaIII, 
                   subgroup = data_III1$dosage, 
                   print.subgroup.name = FALSE)
metta.IIId
summary(metta.IIId)

## Forest plot
forest(x = metta.IIId, 
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
       smlab = "UPDRS/MDS-UPDRS III score", 
       pooled.events = T, 
       text.addline1 = "Inverse variance method", 
       text.addline2 = "Restricted maximum likelihood-estimator for tau^2, Q-Profile method for CI of tau^2", 
       header.line = "both", 
       label.e = "Amantadine", 
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
       sortvar = studlab
)

## **Subgroup analysis for trial type - 13 weeks**
## Meta-analysis
metta.IIIt <- update(object = mettaIII, 
                   subgroup = data_III1$design, 
                   print.subgroup.name = FALSE)
metta.IIIt
summary(metta.IIIt)

## Forest plot
forest(x = metta.IIIt, 
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
       smlab = "UPDRS/MDS-UPDRS III score", 
       pooled.events = T, 
       text.addline1 = "Inverse variance method", 
       text.addline2 = "Restricted maximum likelihood-estimator for tau^2, Q-Profile method for CI of tau^2", 
       header.line = "both", 
       label.e = "Amantadine", 
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
       sortvar = studlab
)