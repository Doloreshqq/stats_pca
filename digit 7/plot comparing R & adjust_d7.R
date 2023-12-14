library(ggplot2)

# data
pca <- c(20,40,60,80,100,120,140,160,180,200,250,300,350,400)
r2 <- c(0.363,0.4491,0.4932,0.5195,0.5752,0.6048,0.6317,0.6444,0.6705,0.6912,0.7487,0.8257,0.8668,0.9282)
ad_r2 <- c(0.3342,0.3971,0.4178,0.4192,0.4582,0.4666,0.4721,0.4566,0.4609,0.4564,0.4538,0.5048,0.4541,0.4724)

data <- data.frame(pca, r2, ad_r2)

plot <- ggplot(data, aes(x=pca)) +
  geom_line(aes(y=r2, color="R2"), size=1.2) +
  geom_line(aes(y=ad_r2, color="Adjusted R2"), size=1.2) +
  labs(title="R2 and Adjusted R2 vs PCA for digit 7",
       x="PCA",
       y="R2 / Adjusted R2") +
  theme_minimal() +
  scale_color_manual(values=c("R2"="blue", "Adjusted R2"="red")) +
  theme(legend.position="top")

print(plot)
