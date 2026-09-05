# Vector numeric
v_num <- c(1.2, 2.3, 3.4)
v_num

# Vector integer
v_int <- c(1L, 2L, 3L)
v_int

# Vector logical
v_log <- c(TRUE, FALSE, TRUE)
v_log

# Matrix
m <- matrix(1:9, nrow = 3, ncol = 3)
m

# Array 
a <- array(1:12, dim = c(1, 3, 2))
a

# Data frame
df <- data.frame(
  Nama = c("Khalisa", "Adibah", "Nur","Valmai"),
  Umur = c(17, 18, 19, 20),
  Nilai = c(90, 60, 98, 55),
  Lulus = c(TRUE, FALSE, TRUE, FALSE)
)
df

# List
mylist <- list(
  angka = c(1, 2, 3),
  mat = matrix(1:6, nrow = 2),
  df = data.frame(ID = 1:2, Nilai = c(90, 100))
)
mylist
mylist$df