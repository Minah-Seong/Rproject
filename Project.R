setwd("C:/sma/Rproject/2020 국민여행조사 원자료_국내여행")
install.packages("foreign")

library(foreign)
library(dplyr)
library(ggplot2)

travel <- read.spss("(원자료) 2020년 국민여행조사_국내여행.sav", reencode='UTF-8', to.data.frame=T)

travel <- travel %>%
  select(BSEX,BAGE,BARA,BFAM,BJOB,BINC1,D_TRA1_CASE
         ,D_TRA1_S_Day,D_TRA1_1_SPOT,D_TRA1_2_SPOT,D_TRA1_3_SPOT,D_TRA1_1_Q6
         ,D_TRA1_2_Q6,D_TRA1_3_Q6,A7,A9
         ,A1_1,A1_2,A1_3,A4_1,A4_2,A4_3,A11) %>%
  filter(D_TRA1_CASE == '국내 관광/휴양 여행(가족/친지/친구 방문, 출장/업무 활동 없는 단순 관광/휴양 여행)') %>%
  rename(nights=D_TRA1_S_Day,
         case=D_TRA1_CASE,
         spot1=D_TRA1_1_SPOT,
         spot2=D_TRA1_2_SPOT,
         spot3=D_TRA1_3_SPOT,
         accom1=D_TRA1_1_Q6,
         accom2=D_TRA1_2_Q6,
         accom3=D_TRA1_3_Q6,
         nums=A7,
         total_cost=A9,
         transport1=A1_1,
         transport2=A1_2,
         transport3=A1_3,
         choice1=A4_1,
         choice2=A4_2,
         choice3=A4_3,
         satisfy=A11)

str(travel)

travel$BSEX <- as.character(travel$BSEX)
travel$BAGE <- as.character(travel$BAGE)
travel$BARA <- as.character(travel$BARA)
travel$BFAM <- as.character(travel$BFAM)
travel$BJOB <- as.character(travel$BJOB)
travel$BINC1 <- as.character(travel$BINC1)
travel$spot1 <- as.character(travel$spot1)
travel$spot2 <- as.character(travel$spot2)
travel$spot3 <- as.character(travel$spot3)
travel$accom1 <- as.character(travel$accom1)
travel$accom2 <- as.character(travel$accom2)
travel$accom3 <- as.character(travel$accom3)
travel$transport1 <- as.character(travel$transport1)
travel$transport2 <- as.character(travel$transport2)
travel$transport3 <- as.character(travel$transport3)
travel$choice1 <- as.character(travel$choice1)
travel$choice2 <- as.character(travel$choice2)
travel$choice3 <- as.character(travel$choice3)
travel$satisfy <- as.integer(travel$satisfy)







