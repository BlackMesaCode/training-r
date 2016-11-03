####################################################################  analysing / debugging / help

history(10) # letzten 10 befehle

# Print

print(pi)
print(pi, digits = 2)
print(0.0001)

summary(iris)	# Mit summary() lassen sich das Minimum, das Maximum, das 1. und 3. Quantil sowie Mittelwert und der Median von Verteilungen ausgeben.
length(iris) # number of elements or components
str(iris)    # structure of an object 
names(iris) # names(x) gibt die Variablennamen des Data-Frames x an.
ncol(iris)	# spaltenanzahl
nrow(iris) # zeilenanzahl

help(print) # ?print == help(print)



####################################################################  system / environment / packages

getwd() # print current working directory
dir() # print files in current working directory

View(installed.packages()) # installierte pakete anzeigen

if ("ggplot2" %in% rownames(installed.packages()) == T) {   # alternativ: if (require("packageName") == T) ...
  print("ggplot2 bereits installiert")
} else {
  install.packages("ggplot2")
}


library() # after installing the package will be listed here
View(installed.packages()) # and also here

sessionInfo() # as we can see, after installing a package, its loaded, but not attached (not accessable without using its full namespace)

library(ggplot2) # we can attach with library - so that we can use the functions of ggplot2 without specifying the ggplot2:: namespace

# both library and require can load and attach add-on packages


# attach und detach ist für dataframes oder lists gemacht, nicht jedoch für packages. für packages library verwenden
?attach
iris$Petal.Width
attach(iris) # fügt das datenset dem global scope / suchpfad hinzu
Petal.Width # we can now access members of iris directly
detach(iris)
Petal.Width # but not after detaching


# Environment Variables

Sys.getenv()
R.Version()
sessionInfo()



####################################################################  plotting

# ylim definiert sichtbarer y wertebereich
# plot type "p" für scatter plot
# plot mtext = margin text

help(plot)
# plot(x,y)	plot(x,y) ist die universelle Funktion zur Erzeugung von Streudiagrammen und Linienzügen aus den Vektoren x und y.


# par()  definiert mehrere darstellungsbereiche für plots
help(par)

barplot() # balkendiagramm
boxplot() # box / whisker plots


dev.off()  # reset plots

# covariance sagt nur was über die richtung aus, aber die höhe des wertes hat wenig aussagekraft, da sie von den daten abhängt

help(paste)

####################################################################  ggplot2


# create factors with value labels 
mtcars$gear <- factor(mtcars$gear,levels=c(3,4,5),
                      labels=c("3gears","4gears","5gears")) 
mtcars$am <- factor(mtcars$am,levels=c(0,1),
                    labels=c("Automatic","Manual")) 
mtcars$cyl <- factor(mtcars$cyl,levels=c(4,6,8),
                     labels=c("4cyl","6cyl","8cyl")) 

# Kernel density plots for mpg
# grouped by number of gears (indicated by color)
ggplot2::qplot(mpg, data=mtcars, geom="density", fill=gear, alpha=I(.5), 
               main="Distribution of Gas Milage", xlab="Miles Per Gallon", 
               ylab="Density")


####################################################################  operations


# Vergleichsoperatoren lassen sich auf ganze Vektoren anwenden

x = 1:10
x
y = x == 1
y
sum(y) # sum, angewendet auf einen vektor vom typ bool gibt die anzahl der TRUE werte zurück


# Elementweise Vergleichoperation

x = 1:10
any(x > 4)
any(x > 10)


x = 1:100
y = 1:10

?match
match(x,y) # gibt vektor mit indizes zurück, für die elemente in y die in x enthalten sind
x %in% y # gibt TRUE FALSE anstelle der index position zurück



# order()	Der Befehl order(OBJEKT$x) ordnet den Datensatz OBJEKT anhand des dort enthaltenen metrischen Vektor x in aufsteigender Reihenfolge

# Der Befehl sort(x) ordnet den metrischen Vektor x in aufsteigender Reihenfolge (siehe order() zum sortieren eines Datensatzes).


# apply(x,col,func) wendet auf die Spalten col eines Arrays x die Funktion func an.
# sapply(x,func)	sapply ermöglicht es, die selbe Funktion func auf eine Liste x von Objekten anzuwenden, und gibt das Ergebnis als Vektor aus.




####################################################################  statistic related

# mean(x)	mean(x)bestimmt das arithmetische Mittel eines Zahlenvektors x.
# median(x)
# sum()	Mit sum() wird die Summe der übergebenen Werte bestimmt.


####################################################################  type conversion

# as.matrix(x)
# as.factor(x)
# unlist()
# c(object,object,...)       # combine objects into a vector









####################################################################  unsorted / other useful functions

# https://de.wikibooks.org/wiki/GNU_R:_Befehle-Index







