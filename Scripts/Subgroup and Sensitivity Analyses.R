# Loading libraries
library("readxl")
library("meta")
library("metafor")
library("metasens")

## Reading in data
data_IV2 <- read_xlsx("UPDRS IV up to 16 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_IV2)
str(data_IV2)

## Original meta-analysis for UPDRS IV up to 16 weeks:
## Creating this with the intention to adapt for sensitivity/subgroup analyses
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

## Generating funnel plot to assess publication bias
funnel(mettaIV2, studlab = TRUE,
       xlim = c(-2.5, 1.5))



## **Subgroup analysis for dosage - 16 weeks**
## Meta-analysis
metta.IV2d <- update(object = mettaIV2, 
                     subgroup = data_IV2$dosage, 
                     print.subgroup.name = FALSE)
metta.IV2d
summary(metta.IV2d)

## Forest plot
forest(x = metta.IV2d, 
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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
       sortvar = studlab
)



## **Subgroup analysis for trial type - 16 weeks**
## Meta-analysis
metta.IV2t <- update(object = mettaIV2, 
                     subgroup = data_IV2$design, 
                     print.subgroup.name = FALSE)
metta.IV2t
summary(metta.IV2t)

## Forest plot
forest(x = metta.IV2t, 
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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
       sortvar = studlab
)



## **Sensitivity analysis - subgroup by quality**
## Meta-analysis
mettaIV2q <- update(object = mettaIV2, 
                    subgroup = data_IV2$quality, 
                    print.subgroup.name = FALSE)
mettaIV2q
summary(mettaIV2q)

## Forest plot
forest(x = mettaIV2q, 
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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
       sortvar = studlab
)

## Repeating this sensitivity analyses but removing Thomas et al. (2004)
## As we believe it is a contributor to non-normality
## Reading in data
data_IV2.5 <- read_xlsx("UPDRS IV up to 16 weeks without Thomas (2004).xlsx")

## New meta-analysis for UPDRS IV up to 16 weeks excluding Thomas (2004)
mettaIV2.5 <- metacont(n.e = n.e ,
                     mean.e = mean.e, 
                     sd.e = sd.e,
                     n.c = n.c, 
                     mean.c = mean.c, 
                     sd.c = sd.c, 
                     studlab = authors, 
                     data = data_IV2.5, 
                     sm = "SMD", # Standard mean difference
                     prediction = TRUE)

## Meta-analysis
mettaIV2.5q <- update(object = mettaIV2.5, 
                    subgroup = data_IV2.5$quality, 
                    print.subgroup.name = FALSE)
mettaIV2.5q
summary(mettaIV2.5q)

## Forest plot
forest(x = mettaIV2.5q, 
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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
       sortvar = studlab
)



## **Sensitivity analysis - leave-one-out**
## Meta-analysis
mettaIV2s <- metainf(mettaIV2, pooled = "random")

## Forest plot
forest(x = mettaIV2s, 
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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
       sortvar = studlab
)