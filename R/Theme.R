theme_presentation <- function() {
  theme_dark(base_size = 28, base_family = "Georgia") %+replace%
    theme(strip.background = element_blank(),
          strip.text.x = element_text(size = 20, colour = "white"),
          strip.text.y = element_text(size = 20, colour = "white"),
          plot.title = element_text(hjust = 0.5), #change stuff here
          panel.background = element_rect(fill = "black")
    )
}
ggplot()+
  geom_point(data = mpg, 
             aes(x = cty, y = hwy, colour = factor(cyl)))+
  labs(title = "theme_presentation")+
  theme_presentation()



theme_pub <- function() {
  theme_dark(base_size = 18, base_family = "Times New Roman") %+replace%
    theme(strip.background = element_blank(),
          strip.text.x = element_text(size = 18, colour = "white"),
          strip.text.y = element_text(size = 18, colour = "white"),
          plot.title = element_text(hjust = 0.5), #change stuff here
          panel.background = element_blank(),
          panel.border = element_blank()
          
    )
}
ggplot()+
  geom_point(data = mpg, 
             aes(x = cty, y = hwy, colour = factor(cyl)))+
  labs(title = "theme_pub")+
  theme_pub()
ggsave(plotB, file ="/Users/anisha/Documents/Lectures/Data_mgmt&Viz/RLibrary/2018-11-05/figs/asign3.png", width = 15, height = 7, dpi = 300)
png("/Users/anisha/Documents/Lectures/Data_mgmt&Viz/RLibrary/2018-11-05/figs/asign3.png", bg = "transparent")
grid.arrange(plotA,plotB,ncol= 1, left = 
               textGrob("Value", rot = 90, gp = gpar(cex = 1.5, col = "red")))
dev.off()   
