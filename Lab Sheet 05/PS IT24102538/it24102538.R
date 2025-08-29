getwd()


Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)


head(Delivery_Times)


Delivery_Times <- read.table("Exercise - Lab 05.txt", header = FALSE)
colnames(Delivery_Times) <- c("Times")


Delivery_Times$Times <- as.numeric(Delivery_Times$Times)


breaks <- seq(20, 70, by = 5)  
hist(Delivery_Times$Times,
     breaks = breaks,
     right = FALSE,             
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time",
     col = "lightblue",
     border = "black")




breaks <- seq(20, 70, by = 5)
hist_data <- hist(Delivery_Times$Times,
                  breaks = breaks,
                  plot = FALSE,
                  right = FALSE)

cum_freq <- cumsum(hist_data$counts)  
upper_bounds <- hist_data$breaks[-1]  

# Plot ogive
plot(upper_bounds, cum_freq, type = "o", col = "blue",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time",
     ylab = "Cumulative Frequency")
