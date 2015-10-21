# a=magic()
a = matrix(floor(runif(10000, min = 0, max = 255)), nrow = 100) # 100 x 100

b = matrix(floor(runif(10000, min = 0, max = 255)), nrow = 100) - 5 # 100 x 100

c = matrix(floor(runif(10000, min = 0, max = 255)), nrow = 100) - 20 # 100 x 100
class(c)
im = abind::abind(a,b,c, along = 3)
class(im)
typeof(im)
nim = EBImage::Image(im, colormode = "Color") # this will convert the
class(nim)
EBImage::imageData(nim);
dim(nim)
EBImage::display(nim)
EBImage::display(getFrame(nim,1))
EBImage::display(getFrame(nim,2))
EBImage::display(getFrame(nim,3))
