# http://www.r-bloggers.com/computing-and-visualizing-pca-in-r/
# https://tgmstat.wordpress.com/2013/11/21/introduction-to-principal-component-analysis-pca/
data("iris")
head(iris,3)
log.ir <- log(iris[, 1:4])
ir.species <- iris[, 5]
ir.pca <- prcomp(log.ir, center = TRUE, scale. = TRUE)
print(ir.pca)
plot(ir.pca, type="l")
summary(ir.pca)
predict(ir.pca, newdata = tail(log.ir,2))
library(ggbiplot)
g <-ggbiplot(ir.pca, obs.scale = 1, var.scale = 1,groups = ir.species, ellipse = TRUE,circle = TRUE)
g <- g + scale_color_discrete(name = '')
g <- g + theme(legend.direction = 'horizontal',legend.position = 'top')
print(g)

# From Gist
require(ggplot2)

theta <- seq(0,2*pi,length.out = 100)
circle <- data.frame(x = cos(theta), y = sin(theta))
p <- ggplot(circle,aes(x,y)) + geom_path()

loadings <- data.frame(ir.pca$rotation,.names = row.names(ir.pca$rotation))
p + geom_text(data=loadings,mapping=aes(x = PC1, y = PC2, label = .names, colour = .names)) + coord_fixed(ratio=1) +labs(x = "PC1", y = "PC2")
require(caret)
trans = preProcess(iris[,1:4], method=c("BoxCox", "center","scale", "pca"))
PC = predict(trans, iris[,1:4])
# Retained PCs
head(PC, 3)
# Loadings
trans$rotation
