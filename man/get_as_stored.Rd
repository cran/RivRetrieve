% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/australia.R
\name{get_as_stored}
\alias{get_as_stored}
\title{get_as_stored}
\usage{
get_as_stored(
  parameter_type,
  station_number,
  start_date,
  end_date,
  tz,
  return_fields
)
}
\arguments{
\item{parameter_type}{Parameter value}

\item{station_number}{Station number}

\item{start_date}{Start date (formatted as YYYY-MM-DD) or just the
year (YYYY)}

\item{end_date}{End date (formatted as YYYY-MM-DD) or just the year (YYYY)}

\item{tz}{TZ}

\item{return_fields}{Return fields}
}
\value{
A tibble with the requested return fields. Zero row tibbles are returned if no data is available for the requested dates. The aggregation of data is generally the mean for most variables, except for rainfall and evaporation which is the sum over the chosen period.
}
\description{
get_as_stored
}
\examples{
# Groundwater level as stored by the BoM
# PLUMB RD @ NARRABRI'
\dontrun{
get_as_stored(
  parameter_type = "Ground Water Level",
  station_number = "GW971623.3.3",
  start_date = "2020-03-01",
  end_date = "2020-03-01"
)
}
}
