#' Compute incidence risk R
#'
#' Compute incidence risk as number of newly affected individuals divided by
#' the population at risk.
#'
#' @param data Data file.
#' @param S1 Variable in data file that allow to identify population at risk.
#' @param S2 Variable in data file that identifies newly infected individuals.
#'
#' @author Denis Haine
#' @export
#' @import dplyr
compute_risk <- function(data, var1, var2) {
    at_risk <- data[which(data[, var1] == 0), ]
    if(nrow(at_risk) == 0)
        inc <- NA
    else inc <- sum(at_risk[, var2]) / length(at_risk[, var1])
    return(inc)
}
