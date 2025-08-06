# Loading libraries
library("readxl")
library("meta")
library("metafor")
library("metasens")



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
       label.c = "Control", 
       label.left = "Favours amantadine", 
       label.right = "Favours control", 
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
       label.c = "Control", 
       label.left = "Favours amantadine", 
       label.right = "Favours control", 
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
       label.c = "Control", 
       label.left = "Favours amantadine", 
       label.right = "Favours control", 
       sortvar = studlab
) 