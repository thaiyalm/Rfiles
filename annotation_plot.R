library(ggplot2)
library(palmerpenguins)
ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species))+
  labs(title = "Penguins Body Mass vs Flipper Length", 
          subtitle = "Data from three species of Penguins",
            caption = "Data collected by Dr. Kristen Gorman")+
  annotate("text", x=210, y=3500, label="The Gentoos are the largest",
           color="purple", fontface="italic", size=5, angle=25)

plot_var <- ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species))+
  labs(title = "Penguins Body Mass vs Flipper Length", 
       subtitle = "Data from three species of Penguins",
       caption = "Data collected by Dr. Kristen Gorman") 
 

plot_var + annotate("text", x=210, y=3500, label="The Gentoos are the largest",
                    color="purple", fontface="italic", size=5, angle=25)


plot_var + annotate("text", x=210:215, y=3500, label="The Gentoos are the largest",
                    color="purple", fontface="italic", size=2)

plot_var + annotate("rect", xmin =180, xmax=200, ymin=3500, ymax=4000, alpha=.2)

plot_var + annotate("segment", x =200, xend=220, y=3000, yend=4000, alpha=.2,
                    color="blue", size=2)

plot_var + annotate("pointrange", x =200, y=4000, ymin=3000, ymax=5000,
                    alpha=.2,color="purple", size=2)

ggsave("D:\\study\\R\\myscripts\\plots\\Rplot_Saving_byCode_sample1.png")

png(file="D:\\study\\R\\myscripts\\plots\\Rplot_Saving_byPNGcode_sample1.png")
plot_var + annotate("pointrange", x =200, y=4000, ymin=3000, ymax=5000,
                    alpha=.2,color="purple", size=2)
dev.off()


pdf(file="D:\\study\\R\\myscripts\\plots\\Rplot_Saving_byPDFcode_sample1.pdf")
plot_var + annotate("pointrange", x =200, y=4000, ymin=3000, ymax=5000,
                    alpha=.2,color="purple", size=2)
dev.off()



jpeg(file="D:\\study\\R\\myscripts\\plots\\Rplot_Saving_byJPGcode_sample1.jpeg")
plot_var + annotate("pointrange", x =200, y=4000, ymin=3000, ymax=5000,
                    alpha=.2,color="purple", size=2)
dev.off()


tiff(file="D:\\study\\R\\myscripts\\plots\\Rplot_Saving_byTIFFcode_sample1.tif")
plot_var + annotate("pointrange", x =200, y=4000, ymin=3000, ymax=5000,
                    alpha=.2,color="purple", size=2)
dev.off()


postscript(file="D:\\study\\R\\myscripts\\plots\\Rplot_Saving.ps")
plot_var + annotate("pointrange", x =200, y=4000, ymin=3000, ymax=5000,
                    alpha=.2,color="purple", size=2)
dev.off()