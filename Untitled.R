data("mtcars")
str(mtcars)
head(mtcars)
tail(mtcars)


#____________________________________________________________________________________________
# 1. Data dictionary for Horsepower in mtcars dataset

# Creating a vector of Horsepower values
horsepower <- c(110, 110, 93, 110, 175, 105, 245, 62, 95, 123, 123, 180, 180, 180, 
                205, 215, 230, 66, 52, 65, 97, 150, 150, 245, 175, 66, 91, 113, 
                264, 175, 335, 109)

# Assigning car model names to the horsepower values
names(horsepower) <- c("Mazda RX4", "Mazda RX4 Wag", "Datsun 710", "Hornet 4 Drive", 
                       "Hornet Sportabout", "Valiant", "Duster 360", "Merc 240D", 
                       "Merc 230", "Merc 280", "Merc 280C", "Merc 450SE", "Merc 450SL", 
                       "Merc 450SLC", "Cadillac Fleetwood", "Lincoln Continental", 
                       "Chrysler Imperial", "Fiat 128", "Honda Civic", "Toyota Corolla", 
                       "Toyota Corona", "Dodge Challenger", "AMC Javelin", "Camaro Z28", 
                       "Pontiac Firebird", "Fiat X1-9", "Porsche 914-2", "Lotus Europa", 
                       "Ford Pantera L", "Ferrari Dino", "Maserati Bora", "Volvo 142E")

# Printing the entire Horsepower Data Dictionary
print(horsepower)

# Retrieving the horsepower of a specific car model
horsepower["Mazda RX4"]
horsepower["Ferrari Dino"]

# Print structure of the dataset
str(horsepower)

#____________________________________________________________________________________________
#2. Create an assigned task amongst features
#a. Importing the dataset with proper variable names
data_dictionary <- data.frame(
  Column_Name = c("mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"),
  Description = c(
    "Miles per gallon (fuel efficiency)",
    "Number of cylinders",
    "Engine displacement (cubic inches)",
    "Horsepower",
    "Rear axle ratio",
    "Weight of the car (1000 lbs)",
    "1/4 mile time (acceleration)",
    "Engine type (0 = V-shaped, 1 = Straight)",
    "Transmission (0 = Automatic, 1 = Manual)",
    "Number of forward gears",
    "Number of carburetors"
  ),
  Data_Type = c("Numeric", "Integer", "Numeric", "Numeric", "Numeric", "Numeric", "Numeric", "Categorical", "Categorical", "Integer", "Integer")
)
print("Data Dictionary:")
print(data_dictionary)
# B - summary of the mtcars
summary(mtcars)

#Data Visualization

# Load the built-in dataset
data(mtcars)

# Histogram of Horsepower (hp)
hist(mtcars$hp, 
     col=rainbow(10),  # Generates colorful bars
     main="Horsepower Distribution", 
     xlab="Horsepower", 
     ylab="Frequency", 
     border="black", 
     breaks=10)

# Histogram of Miles Per Gallon (mpg)
hist(mtcars$mpg, 
     col="lightblue",  # Simple color
     main="Fuel Efficiency Distribution",
     xlab="Miles Per Gallon",
     ylab="Frequency",
     border="black",
     breaks=10)

# Scatter Plot of Horsepower (hp) vs Fuel Efficiency (mpg)
plot(mtcars$hp, mtcars$mpg, 
     main="Horsepower vs Fuel Efficiency",
     xlab="Horsepower", 
     ylab="Miles Per Gallon", 
     col="red", 
     pch=19)  # pch=19 gives solid dots

# Adding a simple trend line
abline(lm(mpg ~ hp, data=mtcars), col="blue", lwd=2)  # Linear regression line
