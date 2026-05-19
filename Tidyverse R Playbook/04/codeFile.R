# Summarize Function
summary(mtcars$mpg)

mtcars%>%
  summarise(mean_mpg=mean(mpg))

mtcars%>%
  summarize(mean_mpg = mean(mpg))

mtcars%>%
  summarise(count = n())

# summarize multi-variables
mtcars %>%
  summarise(mean_wt = mean(wt),
            mean_hp = mean(hp))
mtcars%>%
  summarise(mean_wt = mean(wt),
            mean_hp = mean(hp),
            hp_per_wt = mean_hp/mean_wt)
mtcars%>%
  summarise_all(mean)
mtcars%>%
  summarise_all(min)
mtcars%>%
  summarise_at(vars(mpg), lst(mean, median))
mtcars%>%
  summarise_at(vars(mpg, wt), lst(mean, median, max))

# Groupby
head(mtcars)

mtcars%>%
  group_by(cyl) %>%
  summarise(mean_hp = mean(hp))

mtcars%>%
  group_by(cyl) %>%
  summarise(mean_hp = mean(hp),
            mean_wt = mean(wt),
            hp_per_wt = mean_hp/mean_wt,
            count = n())

mtcars%>%
  group_by(cyl, gear) %>%
  summarise(mean_mpg = mean(mpg),
            mean_qsec = mean(qsec))
mtcars%>%
  group_by(cyl, gear) %>%
  summarise(mean_mpg = mean(mpg),
            mean_qsec = mean(qsec),
            count = n())











