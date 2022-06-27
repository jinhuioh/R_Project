#packages install
install.packages('cowsay')

#package use!
#import java.lang.*;
#System, String
#library(base)사용

library(cowsay)
say('안녕! 나는 고양이야', by='cat')
say('나는 눈사람', by='snowman')

###################################
library(ggplot2)

ggplot(data = iris, aes(x=Petal.Length,y=Petal.Width)) + geom_point()
