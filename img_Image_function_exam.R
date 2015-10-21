s1 = exp(12i*pi*seq(-1, 1, length=300)^2)
y = Image(outer(Im(s1), Re(s1)))
if (interactive()) display(normalize(y))

x = Image(rnorm(300*300*3),dim=c(300,300,3), colormode='Color')
if (interactive()) display(x)

w = matrix(seq(0, 1, len=300), nc=300, nr=300)
m = abind::abind(w, t(w), along=3)
z = Image(m, colormode='Color')
if (interactive()) display(normalize(z))

y = Image(c('red', 'violet', '#ff51a5', 'yellow'), dim=c(71, 71))
if (interactive()) display(y)

## colorMode example
x = readImage(system.file('images', 'nuclei.tif', package='EBImage'))
x = x[,,1:3]
if (interactive()) display(x, title='Cell nuclei')
colorMode(x) = Color
if (interactive()) display(x, title='Cell nuclei in RGB')