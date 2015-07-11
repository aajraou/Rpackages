#First crunching the data
valeurs<-read.table("C:/Users/Abed/Documents/Rpackages/Rpackages/LinearRegression/valeurs_legumes.txt",header=TRUE,sep="\t")
##############
# See how it works for linear regression by using graph (plot)
##############
plot(valeurs$Annee,valeurs$Prix.moyens.Oignons..1.kg.,main="Prix moyen du kilo d'oignons par année")
#Correlation calculation
cor(head(valeurs,17)$Annee,head(valeurs,17)$Prix.moyens.Oignons..1.kg.) # 17 first rows in order to not consider missing values
# =>[1] 0.9525095 # Sounds fine !
# Or we can omit the NA like this:
val2<-na.omit(valeurs)
cor(val2$Annee,val2$Prix.moyens.Oignons..1.kg.)
##############
# Perform the linear regession
##############
reg <- lm(head(valeurs,17)$Prix.moyens.Oignons..1.kg. ~ head(valeurs,17)$Annee)
#Have a look on the graph
abline(reg)
# see the value of the p value:
summary(reg)
# p-value: 3.795e-09 => sounds great
# lets predict the cost of oignon in 2020:
price.2020<-reg$coefficients[[2]]*2020+reg$coefficients[[1]]
# Sounds harder for the mushrooms ...
cor(valeurs$Annee,valeurs$Prix.moyens.Champignons.de.Paris.entiers.en.boite..115.g.)
# [1] 0.8321495
reg <- lm(valeurs$Prix.moyens.Champignons.de.Paris.entiers.en.boite..115.g. ~ valeurs$Annee + I(valeurs$Annee^2))
lines(valeurs$Annee,fitted(reg)) 