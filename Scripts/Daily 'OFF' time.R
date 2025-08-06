# Loading libraries
library("readxl")
library("meta")
library("metafor")
library("metasens")


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
       label.c = "Control", 
       label.left = "Favours amantadine", 
       label.right = "Favours control", 
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
       label.c = "Control", 
       label.left = "Favours amantadine", 
       label.right = "Favours control", 
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
       label.c = "Control", 
       label.left = "Favours amantadine", 
       label.right = "Favours control", 
       sortvar = studlab
)