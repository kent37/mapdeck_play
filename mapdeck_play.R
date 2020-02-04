library(mapdeck)
set_token('pk.eyJ1Ijoia2VudDM3IiwiYSI6ImNrNjMzbGd1NjA1dHUzbG84NW95ZTkwbjIifQ.VyDMAChBzOTXjP0bEVsKEQ')

library(sf)
tracks = st_read('~/Dev/Fair Skies-TEKKK/TEKKK_2019_03.gpkg')
one_day = tracks[as.Date(tracks$time)=='2019-03-11',]

mapdeck(location=c(-71.128184, 42.3769824), zoom=14) %>% 
  add_path(one_day)

mapdeck(location=c(-71.128184, 42.3769824), zoom=10) %>% 
  add_trips(one_day)
