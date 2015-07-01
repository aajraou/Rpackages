#Simple calculation
10/4
36^0.5
4:2
(4+1)*(5+3^2-9)/3
##############
#Variables
##############
x<-10*8
#Vector
color<-c("Blue","Red","Black")
color
sky.week<-rep(c("Cloudy", "Blue Sky", "Raining"), c(2,4,1))
sky.week
logical<-c(TRUE,FALSE,TRUE)
logical
numbers.1<-c(1:15)
#Matrice
matrix.1<-matrix(numbers.1,ncol=3)
matrix.1
dim(matrix.1)<-c(5,3)
matrix.1
matrix.2<-matrix((1:15)*10,nrow=2, byrow=TRUE)
matrix.2
#Array
array.1<-array(letters, dim=c(1,3,5))
array.1
#DataFrame
dataframe.1<-data.frame(matrix.2)
dataframe.1
dataframe.2<-data.frame(color,sky.week,logical)
dataframe.2
#Liste
liste.1<-list(x,color,matrix.1,dataframe.2)
##############
#Filter/Modifications
##############
sum(matrix.2)
apply(matrix.2,1,sum) #by rows
matrix.2[matrix.2>=95 & matrix.2<=105]
matrix.2[,-2] #extract the second column
matrix.2-2
rbind(matrix.2,c(20,10,0,1,-2))
dimnames(matrix.2)<-list(c("r1","r2"),c("c1","c2","c3","c4","c5","c6","c7","c8"))
sky.week[which(sky.week=="Raining")]<-"Raining+"
