# Loading libraries
library("readxl")

# **UPDRS III: Up to 13 weeks**
## Reading in data
dataIII1 <- read_xlsx("UPDRS III up to 13 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(dataIII1[,3])
means_con <- unlist(dataIII1[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **UPDRS IV: Up to 13 weeks**
## Reading in data
data_IV1 <- read_xlsx("UPDRS IV up to 13 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_IV1[,3])
means_con <- unlist(data_IV1[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **UPDRS IV: Up to 16 weeks**
## Reading in data
data_IV2 <- read_xlsx("UPDRS IV up to 16 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_IV2[,3])
means_con <- unlist(data_IV2[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **UPDRS IV: Up to 16 weeks (excluding Thomas et al. 2004)**
## Reading in data
data_IV2.5 <- read_xlsx("UPDRS IV up to 16 weeks without Thomas (2004).xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_IV2.5[,3])
means_con <- unlist(data_IV2.5[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **UPDRS IV: 12-16 weeks**
## Reading in data
data_IV3 <- read_xlsx("UPDRS IV 12-16 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_IV3[,3])
means_con <- unlist(data_IV3[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **UPDRS IV: 24-38 weeks**
## Reading in data
data_IV4 <- read_xlsx("UPDRS IV 24-38 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_IV4[,3])
means_con <- unlist(data_IV4[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **UPDRS IVa: Up to 13 weeks**
## Reading in data
data_IVa1 <- read_xlsx("UPDRS IVa up to 13 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_IVa1[,3])
means_con <- unlist(data_IVa1[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **UPDRS IVa: 12-16 weeks**
## Reading in data
data_IVa2 <- read_xlsx("UPDRS IVa 12-16 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_IVa2[,3])
means_con <- unlist(data_IVa2[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **UDysRS: Up to 13 weeks**
## Reading in data
data_dysrs1 <- read_xlsx("UDysRS up to 13 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_dysrs1[,3])
means_con <- unlist(data_dysrs1[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **UDysRS: Up to 16 weeks**
## Reading in data
data_dysrs2 <- read_xlsx("UDysRS up to 16 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_dysrs2[,3])
means_con <- unlist(data_dysrs2[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **UDysRS: 12-16 weeks**
## Reading in data
data_dysrs3 <- read_xlsx("UDysRS 12-16 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_dysrs3[,3])
means_con <- unlist(data_dysrs3[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **'ON' Time with Troublesome Dyskinesia: Up to 13 weeks**
## Reading in data
data_dys1 <- read_xlsx("ON w dyskinesia up to 13 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_dys1[,3])
means_con <- unlist(data_dys1[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **'ON' Time with Troublesome Dyskinesia: 12-16 weeks**
## Reading in data
data_dys3 <- read_xlsx("ON w dyskinesia 12-16 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_dys3[,3])
means_con <- unlist(data_dys3[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)


# **'ON" Time without Troublesome Dyskinesia: Up to 13 weeks**
## Reading in data
data_nodys1 <- read_xlsx("ON wo dyskinesia up to 13 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_nodys1[,3])
means_con <- unlist(data_nodys1[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **'ON' Time without Troublesome Dyskinesia: 12-16 weeks**
## Reading in data
data_nodys2 <- read_xlsx("ON wo dyskinesia 12-16 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_nodys2[,3])
means_con <- unlist(data_nodys2[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **'OFF' Time: Up to 13 weeks**
## Reading in data
data_off1 <- read_xlsx("OFF up to 13 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_off1[,3])
means_con <- unlist(data_off1[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **'OFF' Time: Up to 16 weeks**
## Reading in data
data_off2 <- read_xlsx("OFF up to 16 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_off2[,3])
means_con <- unlist(data_off2[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)



# **'OFF' Time 12-16 weeks**
## Reading in data
data_off3 <- read_xlsx("OFF 12-16 weeks.xlsx")

## Unlisting the columns of means for intervention and control groups (enables use of shapiro.test())
means_int <- unlist(data_off3[,3])
means_con <- unlist(data_off3[,6])

## Conducting Shapiro-Wilk test for intervention and control groups
shapiro.test(means_int)
shapiro.test(means_con)
