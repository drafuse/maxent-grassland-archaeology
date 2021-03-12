# This is an Rscript for running the Wilcox rank sum test and effect size, to compare AUC values between the hills and in the inter-hill Pampas
# To run the test, add the xlsx file (AUC_Hill_Interhill) and run the following code:
wilcox.test (AUC ~ Location, AUC_Hill_InterHill)
install.packages("coin")
library(coin)
library(rstatix)
AUC_Hill_InterHill %>% wilcox_effsize (AUC ~ Location)