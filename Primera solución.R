# Prendemos librerias 

library(tidyverse)
library(polAr)

# Descargamos datos y los guardamos como objeto

arg <- get_election_data("arg", "presi", "gral", 2003) %>% 
  get_names()

# Filtramos para llegar a diferencia de votos 

arg %>% 
  filter(name_prov == "TUCUMAN") %>% 
  mutate(total = sum(votos)) %>%  
  mutate(votospct = (votos / total) * 100) %>% 
  arrange(votospct) %>% 
  mutate(dif = votospct[20] - votospct[19])
  
  
  
  


