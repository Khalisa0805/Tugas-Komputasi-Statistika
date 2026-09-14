data("iris")

#menampilkan data Sepal.length
iris$Sepal.Length

#menyebutkan tipe data tiap kolom
str(iris)

#membuat variabel baru bernama turunan
# Besar jika Sepal.Width > 3
# Kecil jika Sepal.Width <= 3
iris$turunan <- ifelse(iris$Sepal.Width > 3, "Besar", "Kecil")
iris$turunan

#mengubah variabel turunan menjadi sepal
names(iris)[names(iris) == "turunan"] <- "sepal"
iris$sepal

#mengambil data dengan sepal bernilai Besar
# dari species virginica
data_virginica <- iris[
  iris$sepal == "Besar" & iris$Species == "virginica",
  ]
data_virginica

#mengecek jumlah species dalam data
table(iris$Species)

#memecah data iris menjadi 3 data frame
# berdasarkan species
iris_setosa <- iris[iris$Species == "setosa", ]
iris_setosa
iris_versicolor <- iris[iris$Species == "versicolor", ]
iris_versicolor
iris_virginica <- iris[iris$Species == "virginica", ]
iris_virginica

#mengurutkan setiap data frame
#berdasarkan Sepal.Width
iris_setosa <- iris_setosa[
  order(iris_setosa$Sepal.Width),
]
iris_setosa
iris_versicolor <- iris_versicolor[
  order(iris_versicolor$Sepal.Width),
]
iris_versicolor
iris_virginica <- iris_virginica[
  order(iris_virginica$Sepal.Width),
]
iris_virginica


