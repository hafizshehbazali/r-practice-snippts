#source("http://bioconductor.org/biocLite.R")
biocLite("EBImage")
library("EBImage")
# Reading image from computer
img=readImage(files="~/Desktop/Prog/R/tinago.JPG")
 display(img)
 img1=img+ 0.2 # increase brightness
 img2=img- 0.2 # decrease brightness
 display(img1) # Display images in browser or graphical window
 display(img2) # Display images in browser or graphical window
 img3= img * 0.5 # decrease contrast 
 img4=img * 2    # increase contrast
 display(img3); display(img4)  # show result images
 img5=img^2 # increase Gamma correction
 img6=img^0.7 # decrease Gamma correction
display(img5); display(img6)  # Display result images 

#Cropping 
display(img[289:1000, 669:1000,])
# Rotating and translating 
img7 <-  translate(rotate(img, 45), c(50, 0))
display(img7)
img7=img
ColorMode(img7) <- Grayscale

#Filtering. Low pass filter
fLow <- makeBrush(21, shape= 'disc', step=FALSE)^2
fLow <- fLow/sum(fLow)
img7.fLow <- filter2(img, fLow)
display(img7.fLow)

#Filtering. High Pass filter
fHigh <- matrix(1, nc = 3, nr = 3)
fHigh[2, 2] <- -8
img8.fHigh <- filter2(img, fHigh)
display(img8.fHigh)
