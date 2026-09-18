library(DAAG)

#membuka data airquality
data("airquality")

#melihat struktur data
str(airquality)

#membuat histogram untuk variabel wind
hist(airquality$Wind, 
     main = "Histogram Wind", 
     ylab = "Density", 
     xlab = "Wind")

#estimasi kepadatan
dens <- density(airquality$Wind)

#histogram + density
hist(airquality$Wind, 
     main = "Histogram + Density Curve", 
     probability = TRUE, 
     xlab = "Wind")

#menambahkan density
lines(dens, col = "red", lwd = 2)

#membuat boxplot
boxplot(airquality$Wind, 
        main = "Boxplot Variabel Wind",
        ylab = "Wind")

#membuat steam and leaf
stem(airquality$Wind)

#membuat scatter plot
plot(airquality$Wind, 
     airquality$Ozone, 
     pch = 19,
     main = "Scatterplot ",
     xlab = "Wind", 
     ylab = "Ozone")

# Tambahkan rug plot pada sumbu x dan y
rug(airquality$Wind)
rug(airquality$Wind, side = 2)  

# Tambahkan garis y = x sebagai acuan
abline(0, 1, col = "red", lwd = 2, lty = 2)



     
