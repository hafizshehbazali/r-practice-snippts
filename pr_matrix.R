ar=matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3)
ag=matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3)
ab=matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3)
a=(0:15)/15
print(a)
b=rgb(a, green = 0, blue = 0, names = paste("red", 0:15, sep = "."))
typeof(b)
dim(b)
print(b)

B= matrix(c(2, 4, 3, 1, 5, 7), nrow = 3, dimnames = c("row1","row1","row1","col1","col1","col1"))
print(B)

# Class 

x<- 10 
class(x)
oldClass(x)
inherits(x,what = "a")
class(x) <- c("a", "b")

k=1
class(k)
is.integer(k)
is.numeric(k)
class(k) <- integer(1)
k=1
class(k)
is.integer(k)

y=as.integer(3)
y
class(y)
ny=as.numeric(c(34,3,4,2,3))
class(ny)
a=as.integer(TRUE)
a=as.integer(FALSE)
class(a)
typeof(a)

z=1+2i
class(z);
class(z) <- "integer";
fname=as.character("Joe")
lname=as.character("Smith")
fullname=paste(fname, lname,fname, sep = ":")
print(fullname)

a=c(1,2,4);
b=c(6,7,5)
typeof(b)
class(b)
c=paste(a,b)
class(c)
typeof(c)
sprintf("%s has %d dollars", "Sam", 100) 
sprintf("%s had %0.2f ammount", "Doone", 199.199)
substr("New Start string from here. Stop here. ", start = 4, stop = 20)
# Image processing 
img=EBImage::readImage("images/white.png")
display(img)
display(img[,,2])
img_c=img[1:5, 1:5,]
