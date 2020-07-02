#Simple script for SLRF LCR Workhop 2019-9-19
mydata <- read.csv("ICNALE_500_Analyzed.csv")
summary(mydata)

#histogram
hist(mydata$VST)
hist(mydata$SUBTLEXus_Freq_Log_CW_TAALES)

#simplest plot
plot(mydata$VST,mydata$SUBTLEXus_Freq_Log_CW_TAALES)

#with gglpot2
library(ggplot2)

ggplot(mydata, aes(x=VST, y=SUBTLEXus_Freq_Log_CW_TAALES)) +
  geom_point() +
  geom_smooth(method = lm)

#pearson correlation
cor.test(mydata$VST,mydata$SUBTLEXus_Freq_Log_CW_TAALES, method = "pearson")
#r = -0.4717071 

cor.test(mydata$VST,mydata$SUBTLEXus_Freq_Log_CW_TAALES, method = "spearman")
#rho = -0.4359009 


