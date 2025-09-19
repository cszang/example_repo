library(tidyverse)

diamonds %>% 
  group_by(color) %>% 
  summarise(mean_price = mean(price),
            sd_price = sd(price))
