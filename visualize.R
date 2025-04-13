# visualize.R

# Chargement du package
library(ggplot2)

# Données aléatoires
data <- data.frame(
  category = rep(c("A", "B", "C"), each = 50),
  value = c(rnorm(50, mean = 10),
            rnorm(50, mean = 15),
            rnorm(50, mean = 20))
)

# Boxplot
ggplot(data, aes(x = category, y = value, fill = category)) +
  geom_boxplot(alpha = 0.7) +
  labs(title = "Distribution des valeurs par catégorie",
       x = "Catégorie", y = "Valeur") +
  theme_minimal()

