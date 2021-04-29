library(readr)
library(dplyr)
all_states <- read_csv("Desktop/bar-chart-demo/all-states2.csv")

temp <- all_states %>% group_by(end) %>% summarise(n = n(), value = sum(value))

write.csv(temp, "all_states_grouped.csv")
