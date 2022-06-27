two_sample <- read_csv("C:/R-workspace/csv/two_sample.csv")
View(two_sample)
print(two_sample)
length(two_sample$gender)
length(two_sample$survey)
length(two_sample$score)
print(two_sample$score)
table(two_sample$score)
table(two_sample$gender)
table(two_sample$method)
table(two_sample$survey)
#0   1 
#55 245 
#만족이 245
freq(two_sample$gender)
freq(two_sample$method)
freq(two_sample$score)
freq(two_sample$survey)
freq(two_sample$gender)

##그룹별 빈도 분석표를 그려보자.
table(two_sample$method, two_sample$survey, useNA = 'ifany')
#1번그룹:110이 만족, 2번그룹 135만족

#어느 그룹이 만족도가 더 높았는가?
prop.test(c(110, 135), c(150, 150))
prop.test(c(110, 135), c(150, 150), alternative = 'greater', conf.level = 0.95)
#연구가설 => pt교육110이 코딩교육135보다 만족도가 높다.
#귀무가설 => pt교육110이 코딩교육135보다 만족도가 낮거나 같다.
# p-value = 0.9998 이므로 연구가설 기각!! 귀무가설 채택
# pt교육이 코딩교육보다 만족도가 낮거나 같다.
#prop 1    prop 2 
#0.7333333 0.9000000 
#=> 연구가설: pt교육이 코딩교육보다 만족도가 적다.
#=> 귀무가설: pt교육이 코딩교육보다 만족도가 높거나 같다.
# p-value가 0.0002이므로

table(two_sample$gender, two_sample$survey, useNA = 'ifany')
#1남자 중 만족(1)이 138
#2여자 중 만족(1)이 107

prop.test(c(138, 107), c(174, 126))
#연구가설 =>  대학진학 남여학생을 대상으로 
#             대학진학에 대해 만족도에 차이가 있다.
#귀무가설 => 대학진학 남여학생을 대상으로 
#             대학진학에 대해 만족도에 차이가 없다.
##결과 =>:  p-value= 0.2765으로 대립가설 기각! 영가설 채택

prop.test(c(138, 107), c(174, 126), alternative = 'greater', conf.level = 0.95)
#연구가설 => 대학진학에 남학생(138)의 만족도(174)가
#           여학생(107) 만족도(126)보다 높다.
#귀무가설 => 대학진학에 남학생(138)의 만족도(174)가
#           여학생(107) 만족도(126)보다 낮거나 같다.
##결과 =>:p-value= 0.8618으로 연구가설 기각! 귀무가설 채택!
