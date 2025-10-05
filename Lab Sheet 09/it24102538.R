set.seed(123)
baking_time <- rnorm(25, mean = 45, sd = 2)
cat("Sample Data:\n")
print(baking_time)

sample_mean <- mean(baking_time)
sample_sd <- sd(baking_time)
cat("\nSample Mean:", sample_mean, "\n")
cat("Sample SD:", sample_sd, "\n")


t_test <- t.test(baking_time, mu = 46, alternative = "less")
print(t_test)
