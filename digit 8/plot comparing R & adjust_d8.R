library(ggplot2)

# data
pca <- c(10,20,40,50,60,80,100,120,140,150,160,180,200,250,300,350,400)
r2 <- c(0.2644,0.3112,0.4176,0.4387,0.4599,0.4835,0.522,0.5496,0.5728,0.5914,0.5973,0.6208,0.6419,0.6981,0.775,0.8626,0.9265)
ad_r2 <- c(0.2476,0.279,0.3603,0.368,0.3762,0.3709,0.3842,0.3843,0.3781,0.385,0.3728,0.3652,0.352,0.3149,0.3159,0.3669,0.3011)


data <- data.frame(pca, r2, ad_r2)

plot <- ggplot(data, aes(x=pca)) +
  geom_line(aes(y=r2, color="R2"), size=1.2) +
  geom_line(aes(y=ad_r2, color="Adjusted R2"), size=1.2) +
  labs(title="R2 and Adjusted R2 vs PCA for digit 8",
       x="PCA",
       y="R2 / Adjusted R2") +
  theme_minimal() +
  scale_color_manual(values=c("R2"="blue", "Adjusted R2"="red")) +
  theme(legend.position="top")

print(plot)
