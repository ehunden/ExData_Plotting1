png(file = "plot2.png")

# reading the data
data <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

# cleaning the data
data <- data %>% mutate(V1 = as.POSIXct(dmy_hms(as.character(paste(V1, V2)))),
                        V3 = as.numeric(as.character(V3))) %>% select(V1,V3)

# creating the plot
with(data, plot(V1,V3, type="l", xlab = "", ylab = "Global Active Power (kilowatts)"))

dev.off()
