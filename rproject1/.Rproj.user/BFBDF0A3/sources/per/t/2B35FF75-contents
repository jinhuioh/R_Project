##내장된 함수
jumsu = c(1, 7, 4, 2, 3, 9)

print(sort(jumsu))##비파괴함수
print(jumsu)

jumsu.2 = sort(jumsu)
print(jumsu.2)

jumsu.3 = sort(jumsu, decreasing = TRUE)
#jumsu.3 = sort(jumsu, TRUE) #decreasing생략 가능
#true면 내림차순(큰 수부터)
print(jumsu.3)

str <- paste('굿', '모닝', sep = '/')#세퍼레이트
print(str)
str.2 <- paste('굿','모닝','굿','나잇', sep='')
print(str.2)
##하나가 전체에 영향을 미치는 것을 브로드캐스팅! 이라고 함
##paste함수가 브로드캐스팅 가능하다.
str.3 <- paste(1:12, '월',sep='')
print(str.3)

##사용자 정의 함수(user-defined)
mysum <- function(x){
  result <-  x + 100
  return(result)
}
sum1 <- mysum(1000)
cat('100을 더한 결과는', sum1)

#두 수를 더해서 결과값을 받아오는 함수를 정의해보세요
#1.200, 300더한 결과값 출력
#2.5555,3333더한 결과값 출력
#1번과 2번을 더해서 다시 출력
yousum <- function(x,y){
  result <- x + y
  return(result)
}
sum2 <- yousum(200,300)
cat('1.두 수를 더한 값은', sum2)
sum3 <- yousum(5555,3333)
cat('2.두 수를 더한 값은', sum3)
cat('1번과 2번을 더한 값은',sum2 +sum3)


##install svDialogs를 하고 두 수를 입력받는 창을 띄어보자.
#그리고 덧셈함수를 만들어 두 수를 더해보자.

#library(~~)는 자바 파이썬에서 import~~하는 역할이다.
library(svDialogs)
data.1 <- dlgInput('숫자1입력')$res
data.2 <- dlgInput('숫자2입력')$res
#as.numeric은 데이터 타입을 numeric으로 변환 해주는 함수
n1 <- as.numeric(data.1)
n2 <- as.numeric(data.2)
sumf <- function(x,y){
  result = x + y
  return(result)
}
sumn = sumf(n1,n2)
print(sumn)

mysum.minus <- function(x, y){
  s1 <- x + y
  m1 <- x - y
  return(list(s = s1, m = m1))
}

result1 <- mysum.minus(888, 111)
print(result1)
cat('두 수의 더한 값은', result1$s)
cat('두 수의 뺀 값은', result1$m)
class(result1)


## 사용자 이름 입력
## 사용자 키 입력
##사용자 몸무게 입력
## 사용자 적정몸무게 구하는 함수를 정의
##적정몸무게와 사용자 몸무게를 비교
##'홍길동의 몸무게는 초과/미달 입니다.'출력 되게 만들기
library(svDialogs)
da.1 <- dlgInput('이름입력')$res
da.2 <- dlgInput('키입력')$res
da.3 <- dlgInput('몸무게입력')$res

weight <- function(x,y,z){
  goodweight = (y-100)*0.9
  if(z < goodweight){
    result1 <-  cat(x,'의 몸무게는 0.9를 곱한 결과 미달입니다.')
    return(result1)
  }else if(z == goodweight){
    result1 <-  cat(x,'의 몸무게는 0.9를 곱한 결과 적정입니다.')
    return(result1)
  }else{
    result1 <-  cat(x,'의 몸무게는 0.9를 곱한 결과 초과입니다.')
    return(result1)
  }
}

A <- weight('오진희',160, 48)
A <- weight('오진희2',160,55)
A <- weight('오진희2',160,53)
A <- weight('오진희2',160,54)


##선생님 방법
#이름,키,몸무게 입력용 함수
input.fun <- function(){
  name <-  dlgInput('your name>> ')$res
  height <-  dlgInput('your height>> ')$res
  weight <-  dlgInput('your weight>> ')$res
  height2 <- as.numeric(height)
  weight2 <- as.numeric(weight)
  return(list(n = name, h = height2, w = weight2))
}

## 적정몸무게구하는 함수 
proper.weight <- function(w, h){
  rates = 0.9
  pro.w <- (h - w) *  rates
  return(list(r = rates, prow = pro.w))
}

input.result = input.fun()
print(input.result)
# $n
# [1] "hong"
# 
# $h
# [1] 170
# 
# $w
# [1] 88

name2 <- input.result$n
height2 <- input.result$h
weight2 <- input.result$w
cat('name>', name2, ', height>', height2, ', weight>', weight2)
# name> hong , height> 170 , weight> 88

pro.result <- proper.weight(weight2, height2)
print(pro.result)
# $r
# [1] 0.9
# 
# $prow
# [1] 73.8
rates2 = pro.result$r
pro.weight = pro.result$prow
cat('rates2>', rates2, ', pro.weight>', pro.weight)

if(pro.weight > weight2){
  cat(name2, '의 몸부게는', rates2, '의 비율로 미달입니다.' )
}else{
  cat(name2, '의 몸부게는', rates2, '의 비율로 초과입니다.' )
}