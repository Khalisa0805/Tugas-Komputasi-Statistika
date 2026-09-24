#1. Rata-rata pelanggan datang ke toko adalah 3 orang per jam.
# Modelkan dengan poisson dan hitung P(X≥5)
lambda <- 3
x <- 0:15
pmf <- dpois(x, lambda)
plot(x, pmf, type='h', lwd=3,
     main='Poisson(λ=3)',
     xlab='k',
     ylab='P(X=k)')
P_X_5 <- 1-ppois(4, lambda)
P_X_5

#2. Dari 100 bola (20 berwarna merah), diambil 10 tanpa pengembalian.
# Modelkan jumlah bola merah yang diambil dengan sebaran hipergeometrik 
N <- 100   
K <- 20
n <- 10    
# Domain k
k <- seq(from = max(0, n + K - N), to = min(n, K))
# PMF: P(X = k)
pmf <- dhyper(k, m = K, n = N - K, k = n)
data.frame(k = k, P = pmf)
# Plot PMF
plot(k, pmf, type = "h", lwd = 3,
     main = paste0("Hypergeometric(N=",N,", K=",K,", n=",n,")"),
     xlab = "k (banyak bola merah dalam sampel)",
     ylab = "P(X=k)")
# Simulasi sampling tanpa pengembalian
m <- 10000
samp <- rhyper(m, m = K, n = N - K, k = n)
mean(samp)   
n*K/N 
var(samp)    
n*K/N * (1-K/N) * ((N-n)/(N-1))

#3. Simulasikan 1.000 percobaan Binomial (n=15, p=0.4)
set.seed(123)
n <- 15 
p <- 0.4
# Simulasi 1.000 percobaan 
m <- 1.000
samp <- rbinom(m, size = n, prob = p)
# PMF teoritis 
x <- 0:n
pmf <- dbinom(x, size=n, prob=p)
cdf <- pbinom(x, size=n, prob=p)
plot(x, pmf, type="h", lwd=3, main="PMF Binomial", xlab="k", ylab="P(X=k)")
# Membandingkan histogram hasil simulasi dengan PMF teoritis
hist(samp,
     breaks = seq(-0.5, 15.5, by = 1),
     probability = TRUE,
     main = "Histogram Simulasi vs PMF Teoritis",
     xlab = "Jumlah Sukses (X)",
     ylab = "Probabilitas")
# PMF teoritis
points(x, pmf, pch = 19)
lines(x, pmf, type = "h", lwd = 3)
# Rata-rata simulasi
mean(samp)
# Rata-rata teoritis
n*p
