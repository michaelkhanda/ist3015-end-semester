library(dplyr)
Yield_Factors_All_Years %>%
  group_by(Year, Land_type) %>%
  summarize(medianNationalYield = median(National_Yield))

Yield_Factors_All_Years %>%
  group_by(Year, Land_type) %>%
  summarise(medianWorldYield = median(World_Yield))

Yield_Factors_All_Years %>%
  mutate(Yield_Factor = National_Yield/ World_Yield)%>%
  group_by(Year, Land_type) %>%
  summarise(medianYieldFactor = median(Yield_Factor))

  
