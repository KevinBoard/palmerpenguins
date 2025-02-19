install.packages("palmerpenguins")

# Load the necessary library
library(palmerpenguins)

# Inspect the dataset
head(penguins)

# Calculate column-wise means for numeric variables
numeric_means <- apply(penguins[, sapply(penguins, is.numeric)], 2, mean, na.rm = TRUE)

# Print the result
print(numeric_means)

### Results ###
#bill_length_mm     bill_depth_mm flipper_length_mm       body_mass_g 
#43.92193          17.15117         200.91520        4201.75439 
#year 
#2008.02907


# Count the number of penguins by species
species_counts <- tapply(penguins$species, penguins$species, length)

# Print the result
print(species_counts)

### Results ### 
#Adelie Chinstrap    Gentoo 
#152        68       124


# Calculate mean bill length by species
bill_length_means <- lapply(split(penguins$bill_length_mm, penguins$species), mean, na.rm = TRUE)

# Print the result
print(bill_length_means)

### Results ###
#$Adelie
#[1] 38.79139

#$Chinstrap
#[1] 48.83382

#$Gentoo
#[1] 47.50488


# Create a summary table with mean and SD for each numeric variable
summary_table <- sapply(penguins[, sapply(penguins, is.numeric)], function(x)
  c(mean = mean(x, na.rm = TRUE), sd = sd(x, na.rm = TRUE)))

# Print the result
print(summary_table)


### Results ###
#bill_length_mm bill_depth_mm flipper_length_mm body_mass_g         year
#mean      43.921930     17.151170         200.91520   4201.7544 2008.0290698
#sd         5.459584      1.974793          14.06171    801.9545    0.8183559












