##
##  r a n d . R  Generate Random Matrices
##

rand <- function(n=1, m=n) {
    stopifnot(is.numeric(n), length(n) == 1,
              is.numeric(m), length(m) == 1)
    n <- floor(n)
    m <- floor(m)

    if (n <= 0 || m <= 0) matrix(NA, 0, 0)
    else                  matrix(runif(n*m), nrow=n, ncol=m)
}

randn <- function(n=1, m=n) {
    stopifnot(is.numeric(n), length(n) == 1,
              is.numeric(m), length(m) == 1)
    n <- floor(n)
    m <- floor(m)

    if (n <= 0 || m <= 0) matrix(NA, 0, 0)
    else                  matrix(rnorm(n*m), nrow=n, ncol=m)
}

randi <- function(imax, n=1, m=n) { # drop?
    stopifnot(is.numeric(n), length(n) == 1,
              is.numeric(m), length(m) == 1)
    if (length(imax) == 1) {
        imin <- 1
    } else if (length(imax) == 2) {
        imin <- imax[1]
        imax <- imax[2]
    } else {
        stop("Argument 'imax' must be a scalar or have two elements.")
    }
    if (imin > imax)
        stop("Argument 'imax' must be greater than or equal to 'imin'.")
    n <- floor(n)
    m <- floor(m)

    if (n <= 0 || m <= 0) matrix(NA, 0, 0)
    else matrix(sample(1:imax, n*m, replace=TRUE), nrow=n, ncol=m)
}