library(dplyr)
library(tidyverse)

# Filter

head(mtcars)
dim(mtcars)
filter(mtcars, mpg > 20)
mtcars$make_model <- rownames(mtcars)
head(mtcars)
filter(mtcars, qsec < 17)
filter(mtcars, mpg > 20,
       qsec < 17,
       gear >= 5)
mtcars <- mtcars[, 1:11]

# Arrange

arrange(mtcars)
arrange(mtcars, qsec)
arrange(mtcars, desc(qsec))
arrange(mtcars, desc(cyl),
        desc(wt))

# Filter and Arrange

df <- mtcars

df %>%
  filter(mpg > 20)

df %>%
  filter(mpg > 20,
         gear >= 4) %>%
  arrange(qsec)

# Mutate to Change Column

df <- mtcars

df$new_wt <- 1000 * df$wt

head(df)

df$new_col <- df$cyl +
  df$wt +
  df$am +
  df$gear

head(df)

df <- df %>%
  mutate(new_col = cyl + wt + am + gear)
head(df)

df <- df %>%
  mutate(new_col = 1,
         new_wt = 1000 * wt)
head(df)

df %>%
  mutate(decile = ntile(qsec, 10)) %>%
  head()

# Filter and Mutate

df <- mtcars
head(df)

df %>%
  mutate(decile = ntile(qsec, 10)) %>%
  filter(decile <= 3)

df %>%
  mutate(decile = ntile(qsec, 10),
         over_20_mpg = ifelse(mpg > 20, 1, 0)) %>%
  filter(decile <= 3,
         over_20_mpg == 1)

df %>%
  mutate(decile = ntile(qsec, 10),
         over_20_mpg = ifelse(mpg > 20, 1, 0)) %>%
  filter(decile <= 3,
         over_20_mpg == 1)%>%
  arrange(wt)

df %>%
  mutate(decile = ntile(qsec, 10),
         over_20_mpg = ifelse(mpg > 20, 1, 0)) %>%
  filter(decile <= 3,
         over_20_mpg == 1)%>%
  arrange(wt)%>%
  select(mpg, wt, qsec)






















