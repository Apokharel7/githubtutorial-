theme_presentation <- function() {
  theme_dark(base_size = 28, base_family = "Georgia") %+replace%
    theme(strip.background = element_blank(),
          strip.text.x = element_text(size = 20, colour = "white"),
          strip.text.y = element_text(size = 20, colour = "white"),
          plot.title = element_text(hjust = 0.5), #change stuff here
          panel.background = element_rect(fill = "black")
    )
}



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

