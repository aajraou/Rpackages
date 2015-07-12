# First crunching the data
clients<-read.table("C:/Users/Abed/Documents/Rpackages/Rpackages/DecisionTree/clients.txt",header=TRUE,sep="\t")
##############
# Create the tree via rpart library
##############
library(rpart)
arbre.1 <- rpart(Client ~ ., data=clients, method="class")
print(arbre.1)
#1) root 38 17 MC (0.4473684 0.5526316)  
#  2) Anciennete>=3077 8  0 BC (1.0000000 0.0000000) *
#  3) Anciennete< 3077 30  9 MC (0.3000000 0.7000000) *
##############
# It seems that Anciennete is the best variable too determine if a client is BC or MC!
##############
