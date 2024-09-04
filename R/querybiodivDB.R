install.packages("spocc", dependencies = TRUE)
library(spocc)

pt_geom <- 'POLYGON((-9.5006 36.9613, -9.5006 42.1543, 
                                    -6.1892 42.1543, -6.1892 36.9613, 
                                    -9.5006 36.9613))'
opt_ebird <- list(loc='PT', key = '42ok8a4re506')
opt_inat <- list(geometry = 'POLYGON((-9.5006 36.9613, -9.5006 42.1543, 
                                    -6.1892 42.1543, -6.1892 36.9613, 
                                    -9.5006 36.9613))')
opt_gbif <- list(hasCoordinate = TRUE, country = 'PT')

df <- spocc::occ(query = 'Gyps fulvus', from = c('gbif'), limit = 10,
                 gbifopts = list(geometry = pt_geom))

df <- spocc::occ(query = 'Gyps fulvus', from = c('gbif'), limit = 10,
                 ebirdopts = list(loc='PT', key = '42ok8a4re506'),
                 inatopts = opt_inat,
                 gbifopts = opt_gbif)

df_gyps <- occ2df(df)

spocc::occ(query = 'Passer domesticus', from = 'ebird', ebirdopts = list(loc='POR', key = '42ok8a4re506'),
           limit = 100)

ggplot()+
  geom_point(aes(x=))