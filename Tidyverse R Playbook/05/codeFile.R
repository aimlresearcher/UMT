# 1-D Plots
head(mtcars)
mtcars%>%
  ggplot(aes(x=mpg)) +
  geom_histogram()

mtcars%>%
  ggplot(aes(x=mpg)) +
  geom_histogram(bins = 10)

mtcars%>%
  ggplot(aes(x=mpg)) +
  geom_density()

mtcars%>%
  ggplot(aes(x=mpg)) +
  geom_density(color = "red")

mtcars%>%
  ggplot(aes(x=mpg)) +
  geom_density(color = "red",  fill = 'gray')

# 2-D Plot
mtcars%>%
  ggplot(aes(x = mpg, y = wt)) + 
  geom_point()

mtcars%>%
  ggplot(aes(x = mpg, y = wt)) + 
  geom_point(color = 'purple')

mtcars%>%
  ggplot(aes(x = mpg, y = wt)) + 
  geom_point(color = 'purple', size = 10)

mtcars%>%
  ggplot(aes(x = mpg, y = wt)) + 
  geom_smooth()

mtcars%>%
  ggplot(aes(x = mpg, y = wt)) + 
  geom_smooth(se = FALSE)
mtcars%>%
  ggplot(aes(x = mpg, y = wt)) + 
  geom_line()

# Add Layers
mtcars%>%
  ggplot(aes(x = mpg, y = wt)) + 
  geom_point()

mtcars%>%
  ggplot(aes(x = mpg, y = wt)) + 
  geom_point()+
  geom_smooth()

mtcars%>%
  ggplot(aes(x = mpg, y = wt)) + 
  geom_point()+
  geom_smooth()+
  theme_bw()

# Visualize Summarized Data
mtcars%>%
  ggplot(aes(x = mpg, y = wt, color = as.character(cyl))) + 
  geom_point()

mtcars%>%
  ggplot(aes(x = mpg, y = wt, color = as.factor(cyl))) + 
  geom_point()

mtcars%>%
  filter(cyl != 4)%>%
  ggplot(aes(x = mpg, y = wt)) +
  geom_point()
