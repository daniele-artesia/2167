#load population NU estimates
pop.NUhat <-read.csv("NU estimates population.csv")

#rename columns in Nu and NU estimated
colnames(pop.NUhat)[5] <- "NU_rNU"
colnames(pop.NUhat)[6] <- "NU_loglog"

#draw plots
require(ggplot2)

png(filename="T:/live/2167 STW Comm NU Monitor 2016/02 Delivery/Task 3 - Segmentation Analysis/R Output Plots/Population distribution/ln_ADC distribution.jpeg ",width=1920,height=1080,res=150)
ggplot(pop.NUhat, aes(x=ln.ADC, fill="blue",colour="blue")) + 
  geom_histogram(aes(y=..density..), colour="blue", fill="white", binwidth = 0.5) + 
  geom_density(fill="blue", colour="blue",alpha=0.3)+theme(legend.position="none")+
  #xlim(0,25) +
xlab("ln ADC")+ylab("Density")+ggtitle("Distribution of ln ADC")
dev.off()