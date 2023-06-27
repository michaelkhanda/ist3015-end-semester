library(ggplot2)
infrastructure <-Yield_Factors_All_Years %>%
  select(National_Yield, World_Yield)
infrastructure
ggplot(infrastructure, aes(x= National_Yield, y = World_Yield)) +
  geom_point()
  


