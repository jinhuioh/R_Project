#아노바
data <- read_csv("C:/R-workspace/csv/three_sample.csv")
View(data)

data2 <- subset(data, !is.na(score), c(method, score))
data2
#그래프를 그려서 너무 튀는 값 없애버리기.
plot(data2$score)
boxplot(data2$score)

mean(data2$score)
length(data2$score)#91개 
data2 <- subset(data2, score <=14) 
length(data2$score)

boxplot(data2$score)

table(data2$method)
# 1  2  3 
#31 27 30
#1번 방법 31개..

#각 1,2,3번 방법의 평균을 구해보자.
tapply(data2$score, data2$method, mean)

#동질성 검정(그룹이 2개 이상 일 때 하는 검정,
#           각 그룹의 분포가 정규분포를 다 따르는지 검정)
#그룹이 2개일때와 3개일때 다르다.
#그룹2개 => var.test()
#그룹3개=> bartlett.test()
bartlett.test(score ~ method, data = data2)#데이터이름= data2
#p-value = 0.1905로 0.05보다 크므로 
#3개의 독립적인 집단의 분산이 비슷하다.(정규분포를 따른다.)
#aov()아노바를 사용하여 차이 검정 가능!
data2$method <- factor(data2$method)
#factor을 이용하여 그룹 요소가 1,2,3만 있다고 인식시킴.
#더 정확한 검사가 가능하다.
result <- aov(score ~ method, data = data2)
result
names(result)

summary(result)
#Df Sum Sq Mean Sq F value   Pr(>F)    
#method       2  99.37   49.68   43.58 9.39e-14 ***
#  Residuals   85  96.90    1.14                     
#p-value가 9.39e-14 ***로 3집단간에 차이가 있다.

#차이가 얼마나 있는지 확인.tukeyhsd함수 사용.
TukeyHSD(result)
#$method
#diff        lwr        upr     p adj
#2-1  2.612903  1.9424342  3.2833723 0.0000000
#3-1  1.422903  0.7705979  2.0752085 0.0000040
#3-2 -1.190000 -1.8656509 -0.5143491 0.0001911