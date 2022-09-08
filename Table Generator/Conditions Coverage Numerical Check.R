# Check condition for marginal coverage (alpha < ...)

n <- 876
E <- 0.05
delta <- 0.1

#Grid
alpha <- seq(E/2, E, 0.00000001)
k <- seq(1, n, 1)

#Check condition on marginal coverage using beta distribution 
alpha_hat <- alpha[which.max(qbeta(delta, floor((n+1)*(1-alpha)), floor(alpha*(n+1)))<1-E)-1]
alpha_hat

#Check condition on marginal coverage using binomial distribution
k_hat <- which.max(pbinom(k, n, E)>delta)-1
(k_hat+2)/(n+1)

# (k_hat+2)/(n+1) is the exact solution, alpha_hat is an approximation from below
bound <- (k_hat+2)/(n+1)
alpha_hat < bound


# For all marginal coverage < bound, we have a tolerance region
eps <- 0.000001
ell <- floor((n+1)*(bound-eps))
floor((n+1)*alpha_hat) == ell
qbeta(delta, n+1-ell, ell) >= 1-E
pbinom(ell-1, n, E) <= delta

# For all marginal coverage >= bound, we do not have a tolerance region
ell <- floor((n+1)*(bound))
floor((n+1)*alpha_hat) == ell
qbeta(delta, n+1-ell, ell) >= 1-E
pbinom(ell-1, n, E) <= delta




# Check condition for E

n <- 876
alpha <- 0.05
delta <- 0.1

#Grid
E <- seq(alpha, alpha*2, 0.00000001)
ell <- floor((n+1)*alpha)

E_hat <- E[which.max(pbinom(ell-1, n, E)<=delta)]
E_hat

# For all E >= E_hat we have a tolerance region
pbinom(ell-1, n, E_hat) <= delta

# For all E < E_hat we do not have a tolerance region
eps <- 0.000001
pbinom(ell-1, n, E_hat-eps) <= delta



# Check condition for n

E <- 0.055
alpha <- 0.05
delta <- 0.1

#Grid
n <- seq(100, 10000, 1)
ell <- floor((n+1)*alpha)

n_hat <- n[which.max(pbinom(ell-1, n, E)<=delta)]
n_hat
ell_hat <- floor((n_hat+1)*alpha)

# For all n >= n_hat we have a tolerance region
pbinom(ell_hat-1, n_hat, E) <= delta

# For all n < n_hat we do not have a tolerance region
pbinom(ell_hat-1, n_hat-1, E) <= delta




