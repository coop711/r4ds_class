# install.packages("tidyverse",
#                 repos = "https://cran.rstudio.com")
library(tidyverse)

## The First Steps

### mpg

mpg

### ggplot

ggplot()
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, 
                           y = hwy))
ggplot(data = mpg,
       mapping = aes(x = displ, 
                     y = hwy)) +
  geom_point()
g0 <- ggplot(data = mpg,
             mapping = aes(x = displ, 
                           y = hwy))
g0 +
  geom_point()

## Aesthetic Mappings

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, 
                           y = hwy, 
                           colour = class))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, 
                           y = hwy, 
                           size = class))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, 
                           y = hwy, 
                           alpha = class))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, 
                           y = hwy, 
                           shape = class))
g0 + 
  geom_point(mapping = aes(colour = class))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, 
                           y = hwy), 
             colour = "blue")
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, 
                           y = hwy, 
                           colour = "blue"))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, 
                           y = hwy, 
                           colour = TRUE))

## Facets

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, 
                           y = hwy)) +
  facet_wrap(~ class, 
             nrow = 2)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, 
                           y = hwy)) +
  facet_grid(drv ~ class)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, 
                           y = hwy)) +
  facet_grid( ~ class)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, 
                           y = hwy)) +
  facet_grid(drv ~ .)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ class)

## Geometric Objects

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, 
                           y = hwy))
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, 
                            y = hwy))
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, 
                            y = hwy, 
                            linetype = drv))
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, 
                            y = hwy, 
                            group = drv))
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, 
                            y = hwy, 
                            colour = drv),
              show.legend = FALSE)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, 
                           y = hwy)) +
  geom_smooth(mapping = aes(x = displ, 
                            y = hwy))
ggplot(data = mpg, 
       mapping = aes(x = displ, 
                     y = hwy)) +
  geom_point() +
  geom_smooth()
ggplot(data = mpg, 
       mapping = aes(x = displ, 
                     y = hwy)) +
  geom_point(mapping = aes(colour = class)) +
  geom_smooth()
ggplot(data = mpg, 
       mapping = aes(x = displ, 
                     y = hwy)) +
  geom_point(mapping = aes(colour = class)) +
  geom_smooth(data = filter(mpg, 
                            class == "subcompact"),
              se = FALSE
  )

## Statistical Transformation
