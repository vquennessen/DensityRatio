% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/selectivity.R
\name{selectivity}
\alias{selectivity}
\title{Selectivity at age}
\usage{
selectivity(
  Rec_age,
  Max_age,
  A1,
  L1,
  A2,
  L2,
  K,
  Fleets,
  A50_up,
  A50_down,
  Alpha,
  F_fin,
  Beta,
  Cf
)
}
\arguments{
\item{Rec_age}{numeric value, the age at recruitment, in years.}

\item{Max_age}{numeric value, the maximum age or total lifespan, in years.}

\item{A1}{numeric value, age 1 of female fish in years.}

\item{L1}{numeric value, the length of females at age 1, in cm.}

\item{A2}{numeric value, age 2 of female fish in years.}

\item{L2}{numeric value, the length of females at age 2, in cm.}

\item{K}{numeric value, the von Bertalanffy growth parameter for females.
each fleet, on the interval (0, 1).}

\item{Fleets}{character vector, the names of all fishing fleets that
contribute to selectivity at age.}

\item{A50_up}{numeric vector, the age values at which selectivity is equal to
0.5 on the upcurve for each fishing fleet in Fleets on the interval (0, 1).}

\item{A50_down}{numeric vector, the age values at which selectivity is equal
to 0.5 on the downcurvefor  each fishing fleet in Fleets on the interval
(0, 1).}

\item{Alpha}{numeric vector, the alpha values for each fishing fleet in
Fleets, the relative slope of the upcurve on the interval (0, 1).}

\item{F_fin}{numeric vector, the final selectivity values for each fishing
fleet in Fleets on the interval (0, 1).}

\item{Beta}{numeric vector, the beta values for each fishing fleet in Fleets,
the relative slope of the downcurve if dome-shaped on the interval (0, 1).}

\item{Cf}{numeric vector, the fraction of the whole fishery represented by}
}
\value{
A numeric vector of selectivities at age, from recruitment to maximum
   age, on the interval (0, 1).
}
\description{
\code{selectivity} returns a vector of selectivities at age, on the
   interval (0, 1).
}
\examples{
selectivity(Rec_age = 2, Max_age = 35, A1 = 5, L1 = 32.21, A2 = 15,
   L2 = 47.95, K = 0.2022, Fleets = c('sport', 'hook', 'trawl'),
   A50_up = c(2, 5, 10), A50_down = c(6, 16, 35), Alpha = c(0.33, 0.6, 0.64),
   F_fin = c(0.25, 0.06, 1), Beta = c(1.2, 0.6, 0), Cf = c(0.71, 0.28, 0.01))
}
