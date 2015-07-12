#Simple graph with plot
valeurs<-read.table("C:/Users/Abed/Documents/Rpackages/Rpackages/LinearRegression/valeurs_legumes.txt",header=TRUE,sep="\t")
par(lty=2)
par(pch=17) 
plot(valeurs$Annee,valeurs$Prix.moyens.Oignons..1.kg.,type="b")
plot(valeurs$Annee,valeurs$Prix.moyens.Oignons..1.kg.,type="b",col="blue", bg="green",pch=23)
plot(valeurs$Annee,valeurs$Prix.moyens.Oignons..1.kg.,type="b",col="blue", bg="green",pch=23,main="Coût des oignons",sub="Prix moyen du kilo d'oignon au fil des années",xlab="Année", ylab="Prix",xlim=c(1998, 2014), ylim=c(0, 2.5))
##############
#Autres types
##############
hist(valeurs$Prix.moyens.Oignons..1.kg., main="Histogramme des prix")
boxplot(valeurs$Prix.moyens.Oignons..1.kg., main="Boxplot des prix") 
########
#Combinaison of graphs
########
par(fig=c(0, 0.8, 0, 0.8)) 
plot(valeurs$Annee,valeurs$Prix.moyens.Oignons..1.kg.,      xlab="Année",      ylab="Prix") 
par(fig=c(0, 0.8, 0.55, 1), new=TRUE) 
boxplot(valeurs$Prix.moyens.Oignons..1.kg., horizontal=TRUE, axes=FALSE) 
par(fig=c(0.65, 1, 0, 0.8), new=TRUE) 
boxplot(valeurs$Annee, axes=FALSE) 