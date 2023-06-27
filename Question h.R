library(dplyr)
library(ggplot2)
by_year_landtype<- Yield_Factors_All_Years %>%
  mutate(Yield_Factor = National_Yield/ World_Yield)%>%
  group_by(Year, Land_type) %>%
  summarise(medianYieldFactor = median(Yield_Factor))
by_year_landtype

ggplot(by_year_landtype, aes(x =Year, y = medianYieldFactor,  color = Land_type))+
  geom_line()+
  expand_limits(y=0)

  