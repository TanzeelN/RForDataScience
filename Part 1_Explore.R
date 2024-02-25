
###Chapter 1-------------------------------------------------------------------------
library(tidyverse)

#Data within GGPlot2
mpg

#print(mpg,n=200)


?mpg


ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy))

#Question 1
ggplot(data = mpg)

#Question 2
nrow(mpg)
ncol(mpg)
glimpse(mpg)
#Question 3

?mpg
#drv shows the type of drive it is, front wheel, rear wheel or four wheel drive.

#Question 4

ggplot(data = mpg)+
    geom_point(mapping = aes(x = hwy, y = cyl))


#Question 5

ggplot(data = mpg)+
    geom_point(mapping = aes(x = class, y = drv))

?mpg
#This isn't useful because there aren't that many data points. They are also both categorical variables.

#Shows the number of combinations
count(mpg, drv,class)



##Aesthetics mappings---------------------------------------------

ggplot(data = mpg)+
    geom_point(mapping = aes(x=displ, y =hwy, color = class))

ggplot(data = mpg)+
    geom_point(mapping = aes(x=displ, y =hwy, size = class))

ggplot(data = mpg)+
    geom_point(mapping = aes(x=displ, y =hwy, alpha = class))

ggplot(data = mpg)+
    geom_point(mapping = aes(x=displ, y =hwy, shape = class))

?mpg


##Color assigning

ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy), color = "blue")


##Exercises 2------------------------

#Question 1: color is not outside the aes.

?mpg
#Question 2
str(mpg)
#Manufactuerer model drv compact class

unique(mpg)

#Question 3 & 4

ggplot(data = mpg)+
    geom_point(mapping = aes(x = displ, y = cty, size = hwy,shape = year))

#Question 5

ggplot(data = mpg)+
    geom_point(mapping = aes(x = displ, y = cty, stroke = trans ))

?geom_point


#Question 6

ggplot(data = mpg)+
    geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5))


## Facet Mapping -----------------------------

glimpse(mpg)


ggplot(data = mpg)+
    geom_point(mapping = aes(x = year, y = hwy))+
    facet_wrap(cyl ~ drv,nrow = 6)


ggplot(data = mpg)+
    geom_point(mapping = aes(x = year, y = hwy))+
    facet_grid(cyl ~ drv)

## Facet Exercsise----------------------------

#Question 1

# Continous variables for facet mapping wouldn't work because it would cause too many graphs based on the number of possibilities of that variable.

#Question 2
#Those combinations don't exist so then they would be empty.
ggplot(data = mpg)+
    geom_point(mapping = aes(x = drv, y = cyl))+
    facet_grid(drv~cyl)


#Question 3

# . ignores that dimension
ggplot(data = mpg)+
    geom_point(mapping = aes(x = displ, y = hwy))+
    facet_grid(drv ~ .)



ggplot(data = mpg)+
    geom_point(mapping = aes(x = displ, y = hwy))+
    facet_grid(. ~ cyl)
    
#Question 4 

ggplot(data= mpg)+
    geom_point(mapping = aes(x=displ, y= hwy))+
    facet_wrap( ~class, nrow = 2)
#its easier to see the differences visually. Larger that dataset, it would stick in the mind less.

?facet_wrap
