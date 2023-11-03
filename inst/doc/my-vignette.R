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
siteNumber="K027401001"
discharge=france(site=siteNumber,variable='discharge')
stage=france(site=siteNumber,variable='stage')
plot(discharge$Date,discharge$Q, type='l',xlab='',ylab='Discharge (cms)')

## -----------------------------------------------------------------------------
raw=original(discharge)

## ----echo=TRUE----------------------------------------------------------------
library(knitr)
## kable(raw[1:5,],caption='Raw Brazilian gauge data')
kable(raw[1:5,],caption='Raw French gauge data')

## -----------------------------------------------------------------------------
## brazilSites=brazil(sites=TRUE)
franceSites=france(sites=TRUE)

## ----echo=TRUE----------------------------------------------------------------
## kable(brazilSites[1:10,],caption='Example Brazilian river gauge locations')
kable(franceSites[1:10,],caption='Example French river gauge locations')

## -----------------------------------------------------------------------------
# Annual timeseries
## siteNumber='17050001'
siteNumber="K027401001"
start='2009-01-01'
end='2010-01-31'
## recent=brazil(site=siteNumber,variable='stage',start_date = start,end_date = end)
recent=france(site=siteNumber,variable='stage',start_date = start,end_date = end)
plot(recent$Date,recent$H,type='l', xlab='',ylab='Stage (m)')

