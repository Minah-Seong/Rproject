setwd("C:/sma/Rproject/2020 국민여행조사 원자료_국내여행")
install.packages("foreign")

library(foreign)
library(dplyr)
library(ggplot2)

travel <- read.spss("(원자료) 2020년 국민여행조사_국내여행.sav", reencode='UTF-8', to.data.frame=T)

travel <- travel %>%
  select('BSEX','BAGE','BARA','BFAM','BJOB','BINC1','D_TRA1_CASE'
         ,'D_TRA1_S_Day','D_TRA1_1_SPOT','D_TRA1_2_SPOT','D_TRA1_3_SPOT','D_TRA1_1_Q6'
         ,'D_TRA1_2_Q6','D_TRA1_3x_Q6','A7','A9','A1','A5','A4_1','A4_2','A4_3','A11'
         ,'A9A','A9C','A9D','A9E','A9F','A9G','A9H','A9I')