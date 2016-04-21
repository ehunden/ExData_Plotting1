# Accessing librarys
library(dplyr)

library(lubridate)

png(file = "plot1.png")

# reading the data
data <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

# cleaning the data
data <- data %>% select(V3) %>% mutate(V3 = as.numeric(as.character(V3)))

# creating a histogram
hist(data$V3, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (killowatts)", ylab = "Frequency")

dev.off()
