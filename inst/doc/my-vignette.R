## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",warning=FALSE,message=FALSE,fig.width=7
)

## ----setup--------------------------------------------------------------------
library(RivRetrieve)
# Amazon River near Obidos, Brazil
## siteNumber='17050001'
## discharge=brazil(site=siteNumber,variable='discharge')
## stage=brazil(site=siteNumber,variable='stage')
## plot(discharge$Date,discharge$Q, type='l',xlab='',ylab='Discharge (cms)')

# Mississippi River near Baton Rouge, LA, USA
siteNumber="07374000"
discharge=usa(site=siteNumber,variable='discharge')
stage=usa(site=siteNumber,variable='stage')
plot(discharge$Date,discharge$Q, type='l',xlab='',ylab='Discharge (cms)')




## ----echo=TRUE----------------------------------------------------------------
library(knitr)
## kable(raw[1:5,],caption='Raw Brazilian gauge data')

raw=original(discharge)
kable(raw[1:5,],caption='Raw US gauge data')

## ----echo=TRUE----------------------------------------------------------------
## brazilSites=brazil(sites=TRUE)
## kable(brazilSites[1:10,],caption='Example Brazilian river gauge locations')

usaSites=usa(sites=TRUE)
kable(usaSites[1:10,],caption='Example US river gauge locations')

## -----------------------------------------------------------------------------
# Annual timeseries
## siteNumber='17050001'
## recent=brazil(site=siteNumber,variable='stage',start_date = start,end_date = end)
## plot(recent$Date,recent$H,type='l', xlab='',ylab='Stage (m)')

siteNumber="07374000"
start='2009-01-01'
end='2010-01-31'
recent=usa(site=siteNumber,variable='stage',start_date = start,end_date = end)
plot(recent$Date,recent$H,type='l', xlab='',ylab='Stage (m)')

