##빈도수의 차이를 검증하고 싶을 때
##빈도수를 나타내는 표: 교차검증 표
one_sample <- read_csv("C:/R-workspace/csv/one_sample.csv")
View(one_sample)
setwd('~/Documents/r-workspace/csv')
print(one_sample)
setwd('/Users/administrator/Documents/r-workspace/csv')
getwd()
head(one_sample)
summary(one_sample)
length(one_sample)#컬럼 수
length(one_sample$no)#행의 수
table(one_sample$survey, useNA = 'ifany')
#useNA = 'ifany'사용하면 NA값까지 전부 보여준다.

library(prettyR)#빈도수 디테일하게 확인가능
freq(one_sample$survey)#table함수보다 더 자세하게 확인 가능


#이항분포를 가지는 베루누이 시행 결과인
#교차분석표를 table(),freq()함수로 구함
#이항분포는 명목척도(질적데이터)
binom.test(c(136, 14), p=0.8, alternative = 'greater', conf.level = 0.95)
#136이 0.8퍼센트보다 큰가?
#분석보고서 #만족률(p)이 80퍼 이상이냐 신뢰수준이 0.95인가
#p-value= 0.0003179 영가설이 나올확률(내 주장이 틀릴 확률)
##p_value가 0.05보다 작으므로 내가 주장한 80%이상의 만족도가 나타날 확률이
#95%이상 된다는 것.
#85~100만족도가 나오면 내가 맞다라는 결론!!
#이것이 단일집단 비율검정!


#문제: 기존 구매율이 15%와 차이가 있는지?
#      우리의 판매정보의 데이터가 기존 구매일 15%보다 큰지?
hdtv <- read_csv("C:/R-workspace/csv/hdtv.csv")
View(hdtv)
head(hdtv)
summary(hdtv)
table(hdtv$`user id`, useNA = 'ifany')
freq(hdtv$buy)

#구매율(10)이 전체의 15프로이다.
binom.test(c(10, 40),p=0.15)
#15%의 구매율이다.대립가설 ->
#기존 구매율과 현재 구매율이 15%로 동일하다.
#p-value가 0.05보다 아래로 나와야 한다.
#영가설은 15%가 아니다. 작거나 크다.

#p-value가 0.05보다 크게 나오면 영가설이 채택
#p-value가 0.05보다 크므로 대립가설은 기각! 영가설이 채택!
binom.test(c(10, 40),p=0.15, conf.level = 0.95)
binom.test(c(10, 40),p=0.15, alternative = 'greater', conf.level = 0.95)
#=>기존 구매율 15%와 다르다. alternative = 'greater'=> 15%보다 =크니?
#라고 물어봤는데 영가설이 0.2089이므로 구매율이 15%보다 작다.

binom.test(c(10, 40),p=0.1, alternative = 'greater', conf.level = 0.95)
#p-value =0.02454 이므로 10%보다는 크다는 것을 확인!

binom.test(c(10, 40),p=0.11, alternative = 'greater', conf.level = 0.95)
#p-value =0.04345 이므로 11%보다도 구매율이 크다는 것을 확인!

#=> 결과: 11%보단 구매율이 큼!
#   현재 구매율은 11%~15%사이이다.
#   현재 구매율이 기존 구매율인 15% 보다는 낮다. 
#   이항분포(구매, 비구매)를 다루는 베루누이 시행
#   결과 "단일그룹 비율" 검정함.(명목데이터)