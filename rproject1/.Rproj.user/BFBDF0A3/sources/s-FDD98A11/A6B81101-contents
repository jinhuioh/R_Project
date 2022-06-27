source('함수모음.R')
#적정몸무게 계산 함수수
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

#덧/뺄셈 함수
mysum.minus <- function(x, y){
  s1 <- x + y
  m1 <- x - y
  return(list(s = s1, m = m1))
}

#이름,키,몸무게 입력용 함수
input.fun <-  function(){
  name <- dlgInput('이름입력')$res
  height <- dlgInput('키입력')$res
  weight <- dlgInput('몸무게입력')$res
  height2 <- as.numeric(height)
  weight2 <- as.numeric(weight)
  return(list(n  = name, h = height2, w = weight2))
}

## 적정몸무게구하는 함수 
proper.weight <- function(w, h){
  rates = 0.9
  pro.w <- (h - w) *  rates
  return(list(r = rates, prow = pro.w))
}


