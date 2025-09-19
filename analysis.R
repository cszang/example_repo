library(tidyverse)

diamonds %>% 
  group_by(color) %>% 
  summarise(mean_price = mean(price),
            sd_price = sd(price)) %>% 
  ggplot(aes(color, mean_price, size = sd_price), colour = "red") +
  geom_point()
