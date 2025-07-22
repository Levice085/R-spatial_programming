#.................Histogram......................#
data(airquality)

hist(airquality$Temp, main ="La Guardia Airport's\
Maximum Temperature(Daily)",
     xlab ="Temperature(Fahrenheit)",
     xlim = c(40, 125), col ="yellow",
     freq = TRUE)
#xlim- displays the interval the data should be displayed

#...............Barplot................#
barplot(airquality$Ozone, main = 'Ozone Concenteration in air', 
        xlab = 'ozone levels', col ='blue', horiz = FALSE)

barplot(airquality$Ozone, main = 'Ozone Concenteration in air', 
        xlab = 'ozone levels', col ='blue', horiz = TRUE)

#............Boxplot........................#
#Average wind speed
boxplot(airquality$Wind, main = "Average wind speed\
at La Guardia Airport",
        xlab = "Miles per hour", ylab = "Wind",
        col = "orange", border = "brown",
        horizontal = TRUE, notch = TRUE)

# Multiple Box plots, each representing
# an Air Quality Parameter
boxplot(airquality[, 0:4], 
        main ='Box Plots for Air Quality Parameters')

#...................scatterplot..................#

plot(airquality$Ozone, airquality$Month,
     main ="Scatterplot Example",
     xlab ="Ozone Concentration in parts per billion",
     ylab =" Month of observation ", pch = 19)

#.................Heatmap...............#
# Create example data
data <- matrix(rnorm(50, 0, 5), nrow = 5, ncol = 5)

# Column names
colnames(data) <- paste0("col", 1:5)
rownames(data) <- paste0("row", 1:5)
heatmap(data)   

#.............Map visualization...............#

install.packages("maps")
# Load the required libraries
library(maps)
map(database = "world")

#............Linegraphs.............#
# Create the data for the chart.
v <- c(17, 25, 38, 13, 41)

# Plot the bar chart.
plot(v, type = "o")

#Make it more pretty
plot(v, type = "o", col = "green",
     xlab = "Month", ylab = "Article Written",
     main = "Article Written chart")


#Multiple lines
# Create the data for the chart.
v <- c(17, 25, 38, 13, 41)
t <- c(22, 19, 36, 19, 23)
m <- c(25, 14, 16, 34, 29)

# Plot the bar chart.
plot(v, type = "o", col = "red",
     xlab = "Month", ylab = "Article Written ",
     main = "Article Written chart")

lines(t, type = "o", col = "blue")
lines(m, type = "o", col = "green")

#.............Bar charts................#
#Simple bar chart

# Create the data for the chart
A <- c(17, 32, 8, 53, 1)

# Plot the bar chart
barplot(A, xlab = "X-axis", ylab = "Y-axis", main ="Bar-Chart")

#Horizontal bar chart

# Create the data for the chart
A <- c(17, 32, 8, 53, 1)

# Plot the bar chart
barplot(A, horiz = TRUE, xlab = "X-axis",
        ylab = "Y-axis", main ="Horizontal Bar Chart"
)

# Create the data for the chart
A <- c(17, 2, 8, 13, 1, 22)
B <- c("Jan", "feb", "Mar", "Apr", "May", "Jun")

# Plot the bar chart
barplot(A, names.arg = B, xlab ="Month",
        ylab ="Articles", col ="green",
        main ="Monthly Rainfall data",
        cex.main = 1.5, cex.lab = 1.2, cex.axis = 1.1)

#Grouped bar chart
colors = c("green", "orange", "brown")
months <- c("Mar", "Apr", "May", "Jun", "Jul")
regions <- c("East", "West", "North")


Values <- matrix(c(2, 9, 3, 11, 9, 4, 8, 7, 3, 12, 5, 2, 8, 10, 11),
                 nrow = 3, ncol = 5, byrow = TRUE)

barplot(Values, main = "Total Revenue", names.arg = months,
        xlab = "Month", ylab = "Revenue",
        col = colors, beside = TRUE)

#Creating legend
legend("topleft", regions, cex = 0.5, fill = colors)

#Stacked bargraphs
barplot(Values, main = "Total Revenue", names.arg = months,
        xlab = "Month", ylab = "Revenue", col = colors)

# Add the legend to the chart
legend("topleft", regions, cex = 0.5, fill = colors)



#......................Using ggplot2..................#

# if already installed ggplot2 then use library(ggplot2)
library(ggplot2)

#Bar charts
data <- data.frame(
  fruit = c("Apple", "Banana", "Orange", "Mango"),
  quantity = c(300, 450, 280, 800),
  color = c("red", "yellow", "orange", "green")
)
bar_chart <- ggplot(data, aes(x = fruit, 
                              y = quantity,
                              color = 'black',
                              fill = fruit)) +
  geom_bar(stat="identity") +
  labs(title = "Fruit Quantity Chart", 
       x = "Fruit", y = "Quantity (in units)") +
  scale_fill_manual(values = data$color) + 
  scale_color_manual(values = data$color) + 
  theme_minimal()
bar_chart

set.seed(123)
df <- data.frame(
  gender=factor(rep(c(
    "Average Female income ", "Average Male incmome"), each=20000)),
  Average_income=round(c(rnorm(20000, mean=15500, sd=500), 
                         rnorm(20000, mean=17500, sd=600)))   
) 

head(df)
# Basic histogram
ggplot(df, aes(x=Average_income)) + geom_histogram()

ggplot(df, aes(x = Average_income)) +
  geom_histogram(color = "black", fill = "steelblue") +
  labs(x = "Average Income", y = "Frequency") +
  ggtitle("Histogram of Average Income")+
  theme_minimal()


#Histogram based on groups
ggplot(iris, aes(x = Sepal.Length, fill = Species)) +
  geom_histogram(bins = 30, color = "black", alpha = 0.7) +
  ggtitle("Distribution of Sepal Length by Species") +
  xlab("Sepal Length") +
  ylab("Frequency") +
  scale_fill_manual(values = c("blue", "pink", "red")) +
  theme_minimal()
data(iris)
# Create a histogram faceted by 'Species'
ggplot(iris, aes(x = Sepal.Length, fill = Species)) +
  geom_histogram(bins = 30, color = "black", alpha = 0.7) +
  
  # Facet by 'Species'
  facet_wrap(~Species, scales = "free") +
  
  # Customize labels and theme
  ggtitle("Histogram of Sepal Length by Species") +
  xlab("Sepal Length") +
  ylab("Frequency") +
  theme_minimal()

#Boxplot
set.seed(20000)
data <- data.frame(A = rpois(900, 3),
                   B = rnorm(900),
                   C = runif(900))

# Creating the boxplot using ggplot2
boxplot_plot <- ggplot(data, aes(x = A, y = B)) +
  geom_boxplot() +
  labs(title = "Boxplot of Data values", x = "Variable", y = "Value") +
  theme_minimal()

print(boxplot_plot)

#Pie chart
data <- data.frame(categories = c("Mango", "Apple", "Orange"),
                   values = c(520, 358, 405))

pie_chart <- ggplot(data, aes(x = "", y = values, fill = categories)) + 
  geom_bar(width = 1, stat = "identity") + 
  coord_polar("y", start = 0) + 
  labs(title = "Sybudheen Shop", x = "Fruits", y = "total") + 
  theme_void()
pie_chart


#Plotting from 2 dataframes
# DataFrame for first Scatterplot 
pointDF1 <- data.frame(XDF1 = rnorm(50),  
                       YDF1 = rnorm(50)) 

# DataFrame for second Scatterplot 
pointDF2 <- data.frame(XDF2 = rnorm(50), 
                       YDF2 = rnorm(50)) 

# Combine Two Plots of different 
ggplot() +                
  geom_point(data = pointDF1, aes(XDF1,YDF1),  
             fill = "dark green", color = "black", 
             size = 5, shape = 21)+ 
  geom_point(data = pointDF2, aes(XDF2,YDF2),  
             fill = "green", color = "black",  
             size = 5, shape = 21)+ 
  labs(x = "X-Data", y = "Y-Data")+ 
  ggtitle("Combined Plot")

#Working with legennds
data("USArrests") 
head(USArrests) 

plt <- ggplot(USArrests, aes(Murder, Assault, colour = UrbanPop)) + 
  geom_point() 
plt
#Adjusting the legend title
plt + theme(legend.title = element_text(colour = "red", size = 12))

#Adjusting the legen text
plt + theme(legend.text = element_text(colour = "blue", size = 9))

# Hiding legend title 
plt + theme(legend.title = element_blank())

#Removing legend
plt + theme(legend.position = "none")
plt + theme(legend.position = "none")
#Legend on top
plt + theme(legend.position = "top")

#Adding background to the legend
plt + theme( legend.background = element_rect( fill = "lightblue",  
                                               size = 0.5, linetype = "solid",
                                               colour = "black"))
#Adding labels
# Create dataset
x1 <- c(1, 1, 1, 2, 3, 4, 4, 4, 5, 5, 6, 2, 3)
y1 <- c(7, 23, 31, 14, 11, 3, 13, 27, 21, 10, 21, 14, 30)
label1 <- c('Apple', 'Guava', 'Papaya', 'Orange', 'PineApple',
            'Dragon Fruit', 'Kiwi', 'blackberry', 'blueberry',
            'grapes', 'strawberry', 'raspberry', 'Grapefruit')

sample_data <- data.frame(x1, y1, label1)

# add text with geom_text
ggplot(sample_data, aes(x=x1, y=y1)) +
  geom_point() +
  geom_text(
    label=label1,
    nudge_x=0.45, nudge_y=0.1,
    check_overlap=T
  )

# Create dataset
x1 <- c(1, 1, 1, 2, 3, 4, 4, 4, 5, 5, 6, 2, 3)
y1 <- c(7, 23, 31, 14, 11, 3, 13, 27, 21, 10, 21, 14, 30)
label1 <- c('Apple', 'Guava', 'Papaya', 'Orange', 'PineApple',
            'Dragon Fruit', 'Kiwi', 'blackberry', 'blueberry',
            'grapes', 'strawberry', 'raspberry', 'Grapefruit')

sample_data <- data.frame(x1, y1, label1)

# add text with geom_text
ggplot(sample_data, aes(x=x1, y=y1)) +
  geom_point() +
  geom_label(
    label=label1,
    nudge_x=0.45, nudge_y=0.1,
    check_overlap=T,
    label.padding=unit(0.55, "lines"),
    label.size=0.4,
    color="white",
    fill="#038225"
  )

#Changing labels of the legend
data<-data.frame(x = rnorm(20), 
                 y = rnorm(20), 
                 Users = sample(c("User 1", "User 2", "User 3", 
                                  "User 4", "User 5"), 
                                20, replace=TRUE)) 

# Create ScatterPlot using ggplot2  
ggplot(data,aes(x, y, color = Users))+ 
  geom_point(size = 10)
