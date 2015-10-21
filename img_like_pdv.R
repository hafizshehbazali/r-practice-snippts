#Computes the distance map transform of a binary image. The distance map is a matrix 
#which contains for each pixel the distance to its nearest background pixel.
x = readImage(system.file("images", "shapes.png", package="EBImage"))
if (interactive()) display(x)
dx = distmap(x)
if (interactive()) display(dx/10, title='Distance map of x')
