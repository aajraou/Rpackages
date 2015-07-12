# First crunching the data
clients<-read.table("C:/Users/Abed/Documents/Rpackages/Rpackages/KNN/clients.txt",header=TRUE,sep="\t")
##############
# See how it looks like 
##############
plot(clients)
# Let suppose you have a client with age 65, Male, and your client since 4012 months
# You want to know if will be a good or bad client according to your train data
##############
# Perform the KNN with K=3
##############
res<-knn(clients[,-1],c(65,0,4012),clients$Client,3)
#Have a look a the result
summury(res)
# MC BC 
# 0  1 
# => he sould be good client according to your train data
#### 
# Better data visualisation with ggvis
####
library(ggvis)
clients %>% ggvis(~Age,~Anciennete,fill=~Client) %>% layer_points()