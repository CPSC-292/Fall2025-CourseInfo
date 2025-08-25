dat <- data.frame(week = seq(1,17),
                  effort = c(50,80,100,100,75,75,50,65,60,65,70,70,75,25,30,30,30))

library(ggplot2)
ggplot(dat, aes(week, effort)) + geom_line() + 
  geom_vline(xintercept = 4.7, col = "blue", alpha = 0.5) +
  #geom_vline(xintercept = 7, col = "blue", alpha = 0.5) +
  geom_vline(xintercept = 9, col = "blue", alpha = 0.5) +
  geom_vline(xintercept = 9.7, col = "red", alpha = 0.5) +
  geom_vline(xintercept = 12.7, col = "blue", alpha = 0.5) +
  geom_vline(xintercept = 13.7, col = "red", alpha = 0.5) +
  #geom_vline(xintercept = 15, col = "blue", alpha = 0.5) +
  geom_vline(xintercept = 15.7, col = "red", alpha = 0.5) +
  geom_vline(xintercept = 16.4, col = "red", alpha = 0.5) +
  xlab("Week") + ylab("Effort %") + 
  ylim(0,100) + 
  scale_x_continuous(breaks = seq(1,16)) +
  theme_bw()
ggsave("course_effort.pdf", last_plot(), height = 3, width = 7.5)
