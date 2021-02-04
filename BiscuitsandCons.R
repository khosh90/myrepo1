BC<-file.choose()
Data<-read.csv(BC, header = FALSE, skip=1)

D=Data[1] #date of production
P=Data[4] #product
V=Data[11] #value per tones or kilo
W=Data[5]       
#if (w=Tonnes){
#return(z)
#else
 # return(1000*z)
#}


DF=data.frame(date=D,value=V,Cats=P, UType=W)
library(tidyverse)

ggplot(DF, aes(x=Cats,y=Value))+
  geom_point()

ggplot(DF,aes(x=date,y=Value))+
   geom_point()+
   facet_wrap( UType~Cats)

ggplot(DF,aes(x=Xthing,y=Ything,colour=Cats))+
  geom_point()
