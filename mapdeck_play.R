library(mapdeck)

library(sf)
tracks = st_read('~/Dev/Fair Skies-TEKKK-ADSB/TEKKK_2019_03.gpkg')
one_day = tracks[as.Date(tracks$time)=='2019-03-11',]
st_write(one_day, 'tracks_2019_03_11.gpkg')
one_day = st_read('tracks_2019_03_11.gpkg')
mapdeck(location=c(-71.128184, 42.3769824), zoom=14) %>% 
  add_path(one_day)
mapdeck(location=c(-71.128184, 42.3769824), zoom=14) %>% 
  add_path(tracks)

mapdeck(location=c(-71.128184, 42.3769824), zoom=10) %>% 
  add_trips(one_day)
