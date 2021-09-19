installed.packages()
install.packages("ggplot2")
library(ggplot2)
install.packages("palmerpenguins")
library(palmerpenguins)
data("penguins")
View(penguins)

ggplot(data = penguins) + geom_point(mapping = aes( x = flipper_length_mm, y = body_mass_g))
ggplot(data = penguins) + geom_col(mapping = aes( x = flipper_length_mm, y = body_mass_g))
ggplot(data = penguins) + geom_area(mapping = aes( x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins) + geom_point(mapping = aes( x = flipper_length_mm, y = body_mass_g , colour = class))


ggplot(data = penguins, mapping = aes( x = flipper_length_mm, y = body_mass_g)) + geom_point()
ggplot(data = penguins, mapping = aes( x = flipper_length_mm, y = bill_depth_mm)) + geom_point()
ggplot(data = penguins, mapping = aes( x = bill_length_mm, y = bill_depth_mm)) + geom_point()


ggplot(data = penguins) +
  geom_point(mapping = aes( x = flipper_length_mm, y = body_mass_g,color=species))


ggplot(data = penguins) +
  geom_point(mapping = aes( x = flipper_length_mm, y = body_mass_g,shape=species))



ggplot(data = penguins) +
  geom_point(mapping = aes( x = flipper_length_mm, y = body_mass_g,color=species,shape=species,size=species))


ggplot(data = penguins) +
  geom_point(mapping = aes( x = flipper_length_mm, y = body_mass_g,color=species,shape=species,alpha=species))


ggplot(data = penguins) +
  geom_point(mapping = aes( x = flipper_length_mm, y = body_mass_g,alpha=species,shape=species,size=species))


ggplot(data = penguins) +
  geom_point(mapping = aes( x = flipper_length_mm, y = body_mass_g,color="purple"))


ggplot(data = penguins) +
  geom_line(mapping = aes( x = flipper_length_mm, y = body_mass_g),color="purple")

ggplot(data = penguins) +
  geom_boxplot(mapping = aes( x = flipper_length_mm, y = body_mass_g),color="purple")

ggplot(data = penguins) +
  geom_line(mapping = aes( x = flipper_length_mm, y = body_mass_g),color="purple")


ggplot(data = penguins) +
  geom_smooth(mapping = aes( x = flipper_length_mm, y = body_mass_g),color="purple")

ggplot(data = penguins) +
  geom_jitter(mapping = aes( x = flipper_length_mm, y = body_mass_g),color="purple")


ggplot(data = penguins) +
  geom_rug(mapping = aes( x = flipper_length_mm, y = body_mass_g),color="purple")


ggplot(data = penguins) +
  geom_smooth(mapping = aes( x = flipper_length_mm, y = body_mass_g,linetype=species)) +
  geom_point(mapping = aes( x = flipper_length_mm, y = body_mass_g),color="orange")

data("diamonds")
View(diamonds)

ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut))

ggplot(data=penguins) +
  geom_bar(mapping=aes(x=species, color=species))


ggplot(data=penguins) +
  geom_bar(mapping=aes(x=species, fill=species))


ggplot(data=penguins) +
  geom_bar(mapping=aes(x=species, fill=sex))

ggplot(data = penguins) +
  geom_smooth(mapping = aes( x = flipper_length_mm, y = body_mass_g,linetype=species),
                             method="loess") +
  geom_point(mapping = aes( x = flipper_length_mm, y = body_mass_g),color="orange")


ggplot(data = penguins) +
  geom_point(mapping = aes( x = flipper_length_mm, y = body_mass_g,color=species)) +
  facet_wrap(~species)

ggplot(data = penguins) +
  geom_point(mapping = aes( x = flipper_length_mm, y = body_mass_g,color=species)) +
  facet_grid(sex~species)


ggplot(data = penguins) +
  geom_point(mapping = aes( x = flipper_length_mm, y = body_mass_g,color=species)) +
  facet_grid(~species)


ggplot(data = penguins) +
  geom_point(mapping = aes( x = flipper_length_mm, y = body_mass_g,color=species)) +
  facet_wrap(sex~species)


penguins %>% 
  filter(species == "Chinstrap") %>% 
  ggplot() + geom_point(mapping = aes( x = flipper_length_mm, y = body_mass_g,color=species)) + facet_wrap(sex~species)






