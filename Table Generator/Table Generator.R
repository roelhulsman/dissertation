# Check condition for marginal coverage (alpha < ...)

n <- c(100,1000,10000,100000)
eps <- c(0.1, 0.05, 0.01, 0.005, 0.001)
delta <- c(0.1, 0.05, 0.01, 0.005, 0.001)

#Grid
l <- seq(1, 1000, 1)
(which.min(pbinom(l, 1000, 0.1)<=0.1)+1)
(which.min(pbinom(l, 1000, 0.1)<=0.1)+1)/(1000+1)

d <- c()
t <- 1
for(k in delta){
  for(i in n){
    l <- seq(1, i, 1)
    for(j in eps){
      d[t] <- (which.min(pbinom(l, i, j)<=k)+1)/(i+1)*100
      t <- t+1
    }
  }
}
t(matrix(d, 20, 5))




# Check condition for eps
n <- c(100,1000,10000,100000)
alpha <- c(0.1, 0.05, 0.01, 0.005, 0.001)
delta <- c(0.1, 0.05, 0.01, 0.005, 0.001)

#Grid
l <- seq(0.00001, 0.99999, 0.00001)
l[which.max(pbinom(floor(0.1*(1001)-1), 1000, l)<=0.1)-1]

d <- c()
t <- 1
l <- seq(0.000001, 0.999999, 0.000001)
for(k in delta){
  for(i in n){
    for(j in alpha){
      d[t] <- l[max(which.max(pbinom(floor(j*(i+1)-1), i, l)<=k)-1, 1)]*100
      t <- t+1
    }
  }
}
t(matrix(d, 20, 5))


# Check condition for delta
n <- c(100,1000,10000,100000)
alpha <- c(0.1, 0.05, 0.01, 0.005, 0.001)
eps <- c(0.1, 0.05, 0.01, 0.005, 0.001)

#Grid
l <- seq(0.00001, 0.99999, 0.00001)
l[which.min(pbinom(floor(0.05*(1001)-1), 1000, 0.1)<=l)-1]

d <- c()
t <- 1
for(j in eps){
  for(i in n){
    for(k in alpha){
      d[t] <- pbinom(max(floor(k*(i+1)-1), 0), i, j)*100
      t <- t+1
    }
  }
}
t(matrix(d, 20, 5))




# Check condition for n
alpha <- c(0.1, 0.05, 0.01, 0.005, 0.001)
eps <- c(0.1, 0.05, 0.01, 0.005, 0.001)
delta <- c(0.1, 0.05, 0.01, 0.005, 0.001)

#Grid
l <- seq(1, 1000000, 1)

l[which.max(pbinom(replace(floor(0.01*(l+1)-1), floor(0.01*(l+1)-1)==-1, 0), l, 0.02)<=0.1)]

d <- c()
t <- 1
l <- seq(1, 1000000, 1)
for(k in delta){
  for(j in alpha){
    for(i in eps){
      d[t] <- l[which.max(pbinom(replace(floor(j*(l+1)-1), floor(j*(l+1)-1)==-1, 0), l, i)<=k)]
      t <- t+1
    }
  }
}
t(matrix(d, 25, 5))



