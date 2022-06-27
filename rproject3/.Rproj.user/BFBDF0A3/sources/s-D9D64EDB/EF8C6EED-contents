two_sample <- read_csv("C:/R-workspace/csv/two_sample.csv")
View(two_sample)
head(two_sample)
summary(two_sample)

result <- subset(two_sample, !is.na(score),c(method,score))
head(result)
length(result$score)

a <- subset(result, method == 1)
a
b <- subset(result, method == 2)
b
a.score <- a$score
b.score <- b$score
a.score
b.score
length(a.score)#109개
length(b.score)#118개

#독립적인 a,b집단의 동질성을 비교
var.test(a.score, b.score)
#p-value = 0.3002가 0.05이상이 나오므로 정규분포를 따른다.
#따라서 t-test(모수검증)하면 됨~!

t.test(a.score, b.score, alternative = 'two.side', conf.level = 0.95)
#대립가설 =>: a.score와 b.score이 차이가 있다.
#영가설 => : 차이가 없다.
# p-value = 0.0411이므로 대립가설 채택!!! 차이가 있다.

t.test(a.score, b.score, alternative = 'greater', conf.level = 0.95)
#대립가설 =>: a.score이 b.score보다 평균이 크다.
# p-value = 0.9794이므로 영가설 채택!! a가 b보다 작다.



##문제 !!
two.method <- read.csv("C:/R-workspace/csv/twomethod.csv")
two.method
summary(two.method)#결측치 확인
#두 교육 방법에 따라 시험성적에 차이가 있는지 검정하시오.
resultt <- subset(two.method, !is.na(score), c(method, score))
resultt
summary(resultt)#결측치 확인
#두 집단 평균 차이 검정
#두 집단 subset작성(데이터 정제, 전처리)
#데이터 분리 교육방법별로 분리
at <- subset(resultt, method == 1)
at.score <- at$score
mean(atscore)
bt <- subset(resultt, method == 2)
bt.score <- bt$score
mean(bt.score)
length(at.score)
length(bt.score)
#분포모양 검정
#독립적인 a,b집단의 동질성을 비교
var.test(at.score, bt.score)
#p-value = 0.8494이므로 정규분포를 따른다.

#가설검정
t.test(at.score, bt.score, alternative = 'two.side', conf.level = 0.95)
#대립가설: 두 교육방식에 차이가 있다.
#p-value = 1.303e-06이므로(e에-6승) 대립가설 채택! 차이가 있다.

t.test(at.score, bt.score, alternative = 'greater', conf.level = 0.95)
#대립가설: at.score이 bt.score보다 크다.
#p-value = 1 이므로 영가설 채택! at.score이 bt.score보다 작다.