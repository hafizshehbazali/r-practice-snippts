tree1=read.csv(file = "~/Desktop/Prog/R/trees91.csv", header = TRUE, sep = ",");
w1=read.csv(file="~/Desktop/Prog/R/w1.dat", header = TRUE, sep=",");
stripchart(tree1$C)
stripchart(tree1$C, method="stack")
stripchart(tree1$C, method="jitter", main="Tree C list", xlab = "Values", ylab = "Frequency")
title("Tree and C")
hist(tree1$C)
hist(tree1$C, main="Histogram tree", xlab="C")
hist(w1$vals,main='Leaf BioMass in High CO2 Environment',xlab='BioMass of Leaves',ylim=c(0,16))

install_github("vqv/ggbiplot")