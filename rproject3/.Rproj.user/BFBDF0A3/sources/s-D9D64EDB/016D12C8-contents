
#연속형 데이터 수치 비교 방법
#비율척도(나이, 몸무게, 키)

korean.com.time = 5.2
one_sample <- read_csv("C:/R-workspace/csv/one_sample.csv")
View(one_sample)

time <- one_sample$time
time
print(time)

mean(time, na.rm = T)#na.rm(na값을 remove할까?=T(응))
time2 <- na.omit(time)#na를 포함한 row를 제거
time2

#1.정규성 검증
shapiro.test(time2)
#p-value = 0.7242가 0.05이상 나오면 정규분포를 따른다.
#따라서 time2는 정규분포를 따르고 평균으로 모수검정(t-test)을 하면 된다.!

#2.t-test검증!
t.test(time2, mu=5.2, alternative = 'two.side', conf.level = 0.95)
#대립(연구가설):A회사의 노트북 사용시간과 한국의 노트북 사용시간은 차이가 있다.
#귀무(영가설):A회사의 노트북 사용시간과 한국의 노트북 사용시간은 차이가 없다.
#mean of x = 5.556881이므로 차이가 있다!! 따라서 대립가설 채택, 귀무가설 기각
#95 percent confidence interval:5.377613 ~ 5.736148 : 구간추정
# 5.556881 : 점추정

#한국의 노트북 평균 사용 시간보다 A회사의 노트북 평균 사용시간이 더 큰가?
#t-test로 검증해보자~
t.test(time2, mu=5.2, alternative = 'greater', conf.level = 0.95)
#결론 => 그렇다.
#대립가설 채택! 귀무가설 기각!!

#문제를 풀어보자.
stheight <- read_csv("C:/R-workspace/csv/student_height.csv")
View(stheight)

korea.woman.height <- 148.5

height <- stheight$height
height
length(height)
summary(height)
hist(height)

#기술통계량 결측지 확인
mean(height, na.rm = T)
height2 <- na.omit(height)
height2

#정규성 검증
shapiro.test(height2)
#p-value = 0.0001853가 0.05이상이 아니므로 정규분포를 따르지 않는다.
#따라서 height2는 정규분포를 따르지 않고 비모수검증(중앙값사용)을 해야한다.
# wilcox.test를 하면 된다.!
wilcox.test(height2, mu=korea.woman.height, alternative = 'two.side', conf.level = 0.95)
#가설검정 - 양측검정
#대립가설 => :대한민국 키 평균과 height2에 차이가 있다. <=>영가설: 차이가 없다.
#p-value = 0.067이므로 대립가설 기각! 영가설 채택(차이가 없다)

