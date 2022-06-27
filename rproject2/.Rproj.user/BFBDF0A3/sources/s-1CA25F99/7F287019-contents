basketball_train <- read.csv("C:/R-workspace/csv/basketball_train.csv")
View(basketball_train)
##기술적 통계를 해보자!!
dim(basketball_train)#행렬 개수
length(basketball_train)#컬럼의 수
str(basketball_train)#전체 구조를 정리 df의 행렬개수, 열 이름,타입, 각 값들
str(basketball_train$Player)

##df의 값들의 기술적 통계량
##최소, 최대, 평균, 분산 4분위 수
summary(basketball_train) #Mean=평균(대표값),Median=중앙값

basketball_train$Player
basketball_train$Player[1:3]

basketball_train$Pos

#1. Pos의 개수
#2. Pos의 빈도수
#3. Pos의 요약
#4. Pos의 값이 SG인 것만 찾아보세요
#5. 4의 결과를 그래프로 그려보세요
#6. Pos의 전체 값을 그래프로!
#7. blk가 0.3이상인 선수들만 추출
#8. 7번의 Pos빈도수를 그래프로!
length(basketball_train$Pos)
result <- table(basketball_train$Pos)
result
summary(basketball_train$Pos)
basket <- subset(basketball_train, basketball_train$Pos == 'SG')
basket
library(ggplot2)
barplot(basket$BLK)
barplot(basket$TRB)
barplot(result)
basket2 <- subset(basketball_train, BLK > 0.3)#7번
basket2
barplot(table(basket2$Pos))#8번

#비율 구하기.
result4 <- prop.table(basketball_train$BLK)
round(result4*100, 2)

#정렬을 해보자.
result5 <- basketball_train$X3P
summary(result5)
min(result5)
max(result5)
range(result5)#범위
sort(result5)
mean(result5)
median(result5)#중앙값
var(result5)#분산
quantile(result5, 1/4)#1/4의 값
quantile(result5,3/4)

library(moments)
# 정규성을 채크해보자.
# 왜도, 첨도를 이용해서 정규분포인지 확인!
# 0에 가까울 수록 중앙에 집중된 모양
#왼쪽에 치우친 종모양 > 0
#오른쪽에 치우친 종모양 < 0

#왜도 
###> skewness(basketball_train$X3P)#왜도
###[1] 0.06910396
skewness(basketball_train$X3P)
#0에 가까워 중앙에 집중된 종 모양

#첨도(뾰족한 정도)
###[1] 1.986352
###> kurtosis(basketball_train$X3P)
kurtosis(basketball_train$X3P)#첨도
#완만한 경사(3,0)
#아주 완만한 경사(<3)

hist(basketball_train$X3P)#히스토그램(연속변수 시각화)

library(prettyR)
freq(basketball_train$Pos)


##문제를 풀어보자.
#1
#MASS패키지에 있는 Animals데이터 셋을 이용하여 각 단계에
#맞게 기술통계량을 구하시오.
#단계1: MASS패키지 설치하고 Animas데이터 불러오기.
library(MASS)
df <- data.frame(Animals)
df
tail(df)
length(df)

#단계2: 기술통계량 구하기
#범위, 중앙값, 분산, 첨도, 왜도를 구해보자.
range(df$brain)
range(df$body)

mean(df$brain)
median(df$brain)
var(df$brain)
kurtosis(df$brain)
skewness(df$brain)

#단계3: 패키지에서 제공되는 describe()과 freq()함수를 이용하여
#Animals데이터 셋 전체를 대상으로 기술 통계량 구하기

describe(df)
freq(df)

#2
#descriptive.csv 데이터 셋을 대상으로 다음 조건에 맞게 빈도분석
#및 기술 통계량을 수행하시오.
#조건1: 명목척도 변수인 학교유형(type), 합격여부(pass) 변수에
#대해 빈도분석을 수행하고 결과를 막대그래프와 파이차트로 시각화
descri <- read.csv("C:/R-workspace/csv/descriptive.csv")
View(descri)

type <- descri$type
type
table(type)
barplot(table(type))
pie(table(type))

pass <- descri$pass
pass
tpass <- table(pass)
tpass
barplot(tpass)
pie(tpass)

#조건2: 비율척도 변수인 나이 변수에 대해 요약치(평균,표준편차)와
#비대칭도(왜도와 첨도)통계량을 구하고,
#히스토그램 작성하여 비대칭도 통계량 설명
age <- descri$age
age
mean(age)
sd(age)
var(age)
skewness(age)#왜도
kurtosis(age)#첨도
gender <- descri$gender
hist(age)
#왜도가 0.3804892으로 중앙에 가까운 그래프보다는
#왼쪽에 살짝 치우친 그래프 모양이다.
#첨도가 1.866623으로 3보다 작으므로 그래프가
#완만한 편이라고 할  수 있다.

#조건3: 나이 변수에 대한 밀도분포곡선과 
#정규분포 곡선으로 정규분포 검정
age
hist(age, freq = F)
#age자료의 빈도와 백분율을 구하고 싶을 때
#freq=T: 히스토그램 높이를 밀도출력, freq=F:빈도출력(기본값)
line(density(age))
x <- seq(35, 80, 0.1)#seq:연속되는 수에대해 일정 간격을 두고 선언.
curve(dnorm(x, mean(age), sd(age)), col='red',add = T)
