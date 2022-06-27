##조건문 써보자.
num <- 55
if(num > 50){
  print('50보다 크다.')
}else{
  print('50보다 작다')
}

result <- ifelse(num > 50, '크다','작다')
cat('50보다', result)

#2 + 3 :2항연산자
#a++ :1항연산자


##반복문
for(x in 1:5){
  print(x)
}

for(x in c(1, 5, 6, 7)){
  print(x)
}

array <- c(100, 300, 450)
for(x in array){
  print(x)
}
print(array[1])

for(x in 1:3){
  print(array[x])
}
#기존에 있는 벡터에 맨 끝에 455를 붙여보자.
result2 <- c(array, 455)
print(result2)

result2[4] <- 777
print(result2)

result2[c(1,3)] <- c(222, 999)
print(result2)

result2[1:2] <- 55:56
print(result2)

result2[5] <- 888
print(result2)

#1번 다음에(중간에) 값을 넣어보자.
result2 <- append(result2, 333, after = 1)
print(result2)

#빈벡터 c
result3 <- c()
values = c(99, 22, 33, 43, 9 ,54, 65, 2)
#각 값들이 짝수인지 판별해서
#짝수면 even 홀수면 odd로 집어넣어보자.
for (x in values) {
  if(x%%2 == 0){
    print('even')
    #result3에 even으로 값을 붙여보자.
    result3 <- c(result3, 'even') 
  }else{
    print('odd')
    #result3에 odd로 값을 붙여보자.
    result3 <- c(result3, 'odd')
  }
}
length(values)
print(result3)

names3 <- c()
##입력값 받아서 names3에 누적시켜보자.
library(svDialogs)

for (x in 1:length(values)) {
  n <- readline('name input > ')
  names3 <- c(names3, n)
}
print(names3)

df <- data.frame(names3, values, result3)
print(class(df))
df

str(df)#df의 형태와 값, chr,num,chr등 타입까지 보여준다.
dim(df)#행렬 개수 보여줌
head(df,3)
dim(df)
df[1:2, 1:2]
#행(1,3,5)열(1,3)만 가져와보자.
df[c(1,3,5), c(1,3)]

#컬럼명 result3에서 짝수인것만 찾기
df2 <- subset(df, result3 =='even')
print(df2)
#df에서 values가 50이상 프린트
#df에서 values가 50미만 프린트
#values가 50미만, result3가 even인 것을 찾아서 df3에 저장.
print(subset(df, values > 50))#subset조건을 주어 추출
print(subset(df, values < 50))
df3 <- subset(df,values < 50 & result3 =='even')
df3

df.names3 <- df$names3
#df에서 names3컬럼을 추출할 때 $를 쓴다.
str(df.names3)#str구조 볼 때 씀
df.names3
table(df$names3)#빈도수 체크

df
df[c(1,4,8),1] <- 'kim'
df
df[c(6),1] <- 'song'
df[c(5,7),1] <- 'park'
df

table(df$names3)
df4 <- table(df$names3)
df4
library(ggplot2)
ggplot(df, aes(x= names3, y=values)) + geom_point()


##5명의 정보를 데이터프레임에 넣어,
##그래프로 그려주세요
##이름, 나이, 컴퓨터, 영어점수
##df에서 추출(각 항목을 추출하여 프린트)
##이름에 해당하는 나이를 그래프로 그려보세요
##df에서 추출한 나이의 평균을 구해보세요
##df에서 추출한 영어점수의 최고 점수를 구해보세요
##df의 3번째 행, 3번째 열의 값을 프린트
##df의 1~3행, (2,4)열 값들을 프린트
## 영어점수가 평균보다  높은 사람들만 
##새로운 df_new로 저장
## ————————————————————————
## 컴퓨터점수와 영어점수를 합해서 total컬럼 생성
## total이 150점 이상이면 우수, 100점 이상이면 보통, 아니면 미달의
## 값이 들어가는 result컬럼을 추가.
## 최종 df의 내용과 행과 열의 개수 프린트
## 최종 만들어진 df를 csv(df_csv.csv)로 저장
## 저장된 csv를 읽어와서 프린트


#빈벡터 c
engl <- c()
compu = c(99, 22, 33, 43, 100)
# compu의 값에서 9씩 빼서 c()에 넣어보자.
for (x in compu) {
  resultm = x - 9
}
engl = c(resultm)
length(compu)
print(engl)
length(engl)
namel <- c()



engl = c(93, 32, 23, 53, 10)
name0 = c('a','b','c','d','e')
age0 = c(21, 44, 50, 30, 10)
##입력값 받아서 names3에 누적시켜보자.
length(name0)
df0 <- data.frame(name0, age0, compu, engl)
print(class(df0))
df0

library(ggplot2)
#y축이 나이인 그래프
ggplot(df0, aes(x= name0, y=age0)) + geom_point()
#나이평균
print(mean(age0))
#영어점수 가장 큰 수
print(max(engl))
#df의 3번째 행, 3번째 열의 값을 프린트
print(df0[3,3])
#df의 1~3행, (2,4)열 값들을 프린트
print(df0[1:3,c(2,4)])
#영어점수가 평균보다  높은 사람들만 
##새로운 df_new로 저장
print(mean(engl))
df0_new = subset(df0, engl > 42.2)
df0_new
## 컴퓨터점수와 영어점수를 합해서 total컬럼 생성
df0['total'] = df0['compu'] + df0['engl']
df0
#total이 150점 이상이면 우수, 100점 이상이면 보통, 
#아니면 미달의 값이 들어가는 result컬럼을 추가.
print(table(df0$total))
total = c(192, 54, 56, 96, 110)
totalc = c()
  for(x in total){
    if(x > 150){
      totalc <- c(totalc, '우수')
    }else if(x < 100){
      totalc <- c(totalc, '미달')
    }else{
      totalc <- c(totalc, '보통')
    }
  }
print(totalc)
df0['totalc'] <- (totalc)
df0
## 최종 df의 내용과 행과 열의 개수 프린트
str(df0)#str구조 볼 때 씀
table(df0$totalc)#빈도수 체크
dim(df0)

ggplot(df0, aes(x= name0, y=totalc)) + geom_point()
df0.total<- df0$total
barplot(df0.total, main = 'This is total data', col=c('pink','red','yellow','green','blue'))

barplot(df0$compu , main = 'This is total data', col='pink', horiz=TRUE)

install.packages('plotrix')
library(plotrix)
pie3D(df0$compu , main='computer jumsu', radius = 1)
## 최종 만들어진 df를 csv(df_csv.csv)로 저장
## 저장된 csv를 읽어와서 프린트

write.csv(df0, file = 'df0.csv')

##xlsx파일 읽어오는 패키지 다운로드
install.packages('xlsx')
library(xlsx)
#csv를 읽어와보자.
readDf0 <- read.csv('C:/R-workspace/rproject1/df0.csv',
                    header=TRUE)
readDf0
