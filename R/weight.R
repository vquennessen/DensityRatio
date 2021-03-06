#' Weight at age
#'
#' \code{weight} returns a vector of weights at age, in kg.
#'
#' @param L numeric vector, the length at age vector, in cm.
#' @param WA numeric value, the coefficient in the weight at length equation.
#' @param WB numeric value, the exponent in the weight at length equation.
#'
#' @return a numeric vector of weights at ages, from age at recruitment to
#'    maximum age, in kg.
#' @export
#'
#' @examples
#' L <- length_age(Rec_age = 2, Max_age = 35, A1 = 5, L1 = 32.21, A2 = 15,
#'    L2 = 47.95, K = 0.2022, All_ages = FALSE)
#' weight(L, WA = 1.68e-5, WB = 3)
weight = function(L, WA, WB) {

  ###### Error handling ########################################################

  # classes of variables
  if (!is.numeric(WA)) {stop('WA must be a numeric value.')}
  if (!is.numeric(WB)) {stop('WB must be a numeric value.')}
  if (!is.numeric(L)) {stop('L must be a numeric vector.')}

  # acceptable values
  if (WA <= 0) {stop('WA must be greater than 0.')}
  if (WB <= 0) {stop('WB must be greater than 0.')}
  if (sum(L <= 0) > 0) {stop('All values in L must be greater than 0.')}

 ###############################################################################

  # Based on Babcock & MacCall (2011): Eq. (11)
  weights <- WA*L^WB

  return(weights)

}
