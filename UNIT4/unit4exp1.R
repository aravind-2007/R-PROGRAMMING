data(mtcars)
mean_mpg <- mean(mtcars$mpg)
median_mpg <- median(mtcars$mpg)
get_mode <- function(v) {
  uniq_v <- unique(v)
  uniq_v[which.max(tabulate(match(v, uniq_v)))]
}
mode_mpg <- get_mode(mtcars$mpg)
cat("Mean of mpg:", mean_mpg, "\n")
cat("Median of mpg:", median_mpg, "\n")
cat("Mode of mpg:", mode_mpg, "\n")
