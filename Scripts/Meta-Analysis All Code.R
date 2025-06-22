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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
       sortvar = studlab
)

## Generating funnel plot to assess publication bias
funnel(mettaIV2, studlab = TRUE,
       xlim = c(-2.5, 1.5))



## Subgroup analyses for risk of bias assessment
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



## Risk of bias sensitivity analysis - subgroup by quality
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



## Leave-one-out for sensitivity analysis
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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
       sortvar = studlab
)





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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
       sortvar = studlab
)





# **UDysRS: Up to 13 weeks**
## Reading in data
data_dysrs1 <- read_xlsx("UDysRS up to 13 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_dysrs1)
str(data_dysrs1)

## Meta-analysis
mettadysrs1 <- metacont(n.e = n.e ,
                        mean.e = mean.e, 
                        sd.e = sd.e,
                        n.c = n.c, 
                        mean.c = mean.c, 
                        sd.c = sd.c, 
                        studlab = authors, 
                        data = data_dysrs1, 
                        sm = "SMD", # Standard mean difference
                        prediction = TRUE)
mettadysrs1
summary(mettadysrs1)

## Forest plot
forest(x = mettadysrs1, 
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
       smlab = "UDysRS score", 
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
funnel(mettadysrs1)



# **UDysRS: Up to 16 weeks**
## Reading in data
data_dysrs2 <- read_xlsx("UDysRS up to 16 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_dysrs2)
str(data_dysrs2)

## Meta-analysis
mettadysrs2 <- metacont(n.e = n.e ,
                        mean.e = mean.e, 
                        sd.e = sd.e,
                        n.c = n.c, 
                        mean.c = mean.c, 
                        sd.c = sd.c, 
                        studlab = authors, 
                        data = data_dysrs2, 
                        sm = "SMD", # Standard mean difference
                        prediction = TRUE)
mettadysrs2
summary(mettadysrs2)


## Forest plot
forest(x = mettadysrs2, 
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
       smlab = "UDysRS score", 
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



# **UDysRS: 12-16 weeks**
## Reading in data
data_dysrs3 <- read_xlsx("UDysRS 12-16 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_dysrs3)
str(data_dysrs3)

## Meta-analysis
mettadysrs3 <- metacont(n.e = n.e ,
                        mean.e = mean.e, 
                        sd.e = sd.e,
                        n.c = n.c, 
                        mean.c = mean.c, 
                        sd.c = sd.c, 
                        studlab = authors, 
                        data = data_dysrs3, 
                        sm = "SMD", # Standard mean difference
                        prediction = TRUE)
mettadysrs3
summary(mettadysrs3)

## Forest plot
forest(x = mettadysrs3, 
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
       smlab = "UDysRS score", 
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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
       sortvar = studlab
)

## Generating funnel plot to assess publication bias
funnel(mettadys1)



# **ON with dyskinesia: Up to 16 weeks**
## Reading in data
data_dys2 <- read_xlsx("ON w dyskinesia up to 16 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_dys2)
str(data_dys2)

## Meta-analysis
mettadys2 <- metacont(n.e = n.e ,
                      mean.e = mean.e, 
                      sd.e = sd.e,
                      n.c = n.c, 
                      mean.c = mean.c, 
                      sd.c = sd.c, 
                      studlab = authors, 
                      data = data_dys2, 
                      sm = "SMD", # Standard mean difference
                      prediction = TRUE)
mettadys2
summary(mettadys2)

## Forest plot
forest(x = mettadys2, 
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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
       sortvar = studlab
)





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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
       sortvar = studlab
)

## Generating funnel plot to assess publication bias
funnel(mettanodys1)



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
       label.c = "Placebo", 
       label.left = "Favours amantadine", 
       label.right = "Favours placebo", 
       sortvar = studlab
)





# **OFF time: Up to 13 weeks**
## Reading in data
data_off1 <- read_xlsx("OFF up to 13 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_off1)
str(data_off1)

## Meta-analysis
mettaoff1 <- metacont(n.e = n.e ,
                      mean.e = mean.e, 
                      sd.e = sd.e,
                      n.c = n.c, 
                      mean.c = mean.c, 
                      sd.c = sd.c, 
                      studlab = authors, 
                      data = data_off1, 
                      sm = "SMD", # Standard mean difference
                      prediction = TRUE)
mettaoff1
summary(mettaoff1)

## Forest plot
forest(x = mettaoff1, 
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
       smlab = "Daily 'OFF' Time (hours)", 
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
funnel(mettaoff1)



# **OFF time: Up to 16 weeks**
## Reading in data
data_off2 <- read_xlsx("OFF up to 16 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_off2)
str(data_off2)

## Meta-analysis
mettaoff2 <- metacont(n.e = n.e ,
                      mean.e = mean.e, 
                      sd.e = sd.e,
                      n.c = n.c, 
                      mean.c = mean.c, 
                      sd.c = sd.c, 
                      studlab = authors, 
                      data = data_off2, 
                      sm = "SMD", # Standard mean difference
                      prediction = TRUE)
mettaoff2
summary(mettaoff2)

## Forest plot
forest(x = mettaoff2, 
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
       smlab = "Daily 'OFF' Time (hours)", 
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



# **OFF time: 12-16 weeks**
## Reading in data
data_off3 <- read_xlsx("OFF 12-16 weeks.xlsx")

## Viewing data and checking that it is numeric
View(data_off3)
str(data_off3)

## Meta-analysis
mettaoff3 <- metacont(n.e = n.e ,
                      mean.e = mean.e, 
                      sd.e = sd.e,
                      n.c = n.c, 
                      mean.c = mean.c, 
                      sd.c = sd.c, 
                      studlab = authors, 
                      data = data_off3, 
                      sm = "SMD", # Standard mean difference
                      prediction = TRUE)
mettaoff3
summary(mettaoff3)

## Forest plot
forest(x = mettaoff3, 
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
       smlab = "Daily 'OFF' Time (hours)", 
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