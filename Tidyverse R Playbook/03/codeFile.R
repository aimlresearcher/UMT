library(tidyverse)
# Gather
ldeaths
df <- data.frame(ldeaths)
head(df)

messy <- data.frame(
  name = c("John", "Jacob", "Jingleheimer", "Schmidt"),
  a = c(67,80,64,54),
  b = c(56,90,50,86)
)
messy

messy %>%
  gather(drug, volume, a:b)

messy <- data.frame(
  name = c("John", "Jacob", "Jingleheimer", "Schmidt"),
  a = c(67,80,64,54),
  b = c(56,90,50,86),
  c = c(10,23,15,30)
)
messy %>%
  gather(drug, volume, a:c)

# Spread
messy

long_df <- messy %>%
  gather(drug, volume, a:c)
long_df

long_df %>%
  spread(key = drug,
         value = volume)

long_df %>%
  spread(drug, volume)

long_df <- long_df[-c(1, 6), ]
long_df

long_df %>%
  spread(drug, volume)

long_df %>%
  spread(drug, volume, fill = 0)

# Extract

messy <- data.frame(
  name = c("John Smith", "Jacob Doe", "Jingleheimer Aslam", "Schmidt Lahori"),
  a = c(67,80,64,54),
  b = c(56,90,50,86)
)
messy

messy %>%
  separate(name, into = c('first_name', 'last_name'), sep = ' ')

messy %>%
  separate(name, into = c('first_name', 'last_name'))

messy %>%
  extract(name, "Smith", regex = "(Smith)")

messy %>%
  extract(name, "Smith", regex = "(Smith)", remove = FALSE)




















