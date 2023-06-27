library(dplyr)
library(ggplot2)
Year_2016 <- Yield_Factors_All_Years %>%
  filter(Year == 2016) %>%
  select(Land_type, National_Yield, World_Yield, )
Year_2016

Year_2016 %>% 
  ggplot(aes(x= National_Yield, y = World_Yield, color = Land_type)) +
  geom_point() +
  facet_wrap(~ Land_type)
