=begin
###########################################################################################
    *프로그램명: 로또 추첨기능  
    *소스파일명: lotto_controller.rb
    *작성자: 장승배
    *버전: 1.0.0
    *생성자: 장승배
    *생성일자: 2021.10.20
    *최종수정일자: 2021.11.30
    *최종수정자: 장승배
    *최종수정내용: 주석의 추가
    --------------------------------------------------------------------------------------
    *내용: 지난 100회차 로또분을 전부 확인하고 계산해본 결과 
          노랑, 노랑, 빨강, 녹색, 나머지색 이라는 참 으로 신기한 결과가 나왔습니다.
          그래서 첫번째, 두번째 자리에는 무조건 노랑색 공이 오게 하고 세번째 자리에는 무조건 빨간색이 
          네번째는 좀 그렇지만 녹색을 다섯번째와 여섯번째의 경우 남은 공들을 랜덤으로 뽑게 하였습니다.
          확인은 if문으로 일일이 확인하여 비교하였습니다.
                
###########################################################################################
=end
class LottoController < ApplicationController
    def lotto_html   #lolotto_controller 와 lotto_html의 연결해주는 부분
        
        yellow_ball = [*1..10]                              #노란색 공의 범위는 1~10
        red_ball = [*21..30]                                #빨간색 공의 범위는 21~30
        green_ball=[*41..45]                                #초록색 공의 범위는 41~45
        number3 = [*1..45]                                  #나머지 공의 범위는 1~45
        
        
        @lotto_yellow1 = yellow_ball.sample(2)              #노란공의 값을 두번 뽑는다.
        @lotto_yellow2 = yellow_ball.sample(2)
        @lotto_yellow3 = yellow_ball.sample(2)
        @lotto_yellow4 = yellow_ball.sample(2)
        @lotto_yellow5 = yellow_ball.sample(2)
        
        @lotto_red1 = red_ball.sample(1)                    #빨간 공이 나올 값.
        @lotto_red2 = red_ball.sample(1)
        @lotto_red3 = red_ball.sample(1)
        @lotto_red4 = red_ball.sample(1)
        @lotto_red5 = red_ball.sample(1)
        
        @lotto_green1 = green_ball.sample(1)                #초록 공이 나올 값.
        @lotto_green2 = green_ball.sample(1)
        @lotto_green3 = green_ball.sample(1)
        @lotto_green4 = green_ball.sample(1)
        @lotto_green5 = green_ball.sample(1)
        
        @lotto_number1 = number3.sample(2).sort            #나머지 공이 나올 값들.              
        @lotto_number2 = number3.sample(2).sort
        @lotto_number3 = number3.sample(2).sort
        @lotto_number4 = number3.sample(2).sort
        @lotto_number5 = number3.sample(2).sort
        
        
        
        if @lotto_yellow1[0] == @lotto_number1[0]         #첫번째 경우의 수의 반복 제거
            @lotto_number1[0] = number3.sample[1]
        
        elsif @lotto_red1[0]  == @lotto_number1[0]
            @lotto_number1[0] = number3.sample[1]
        
        elsif @lotto_green1[0]  == @lotto_number1[0]
            @lotto_number1[0] = number3.sample[1]
        
        elsif @lotto_yellow1[1] == @lotto_number1[1] 
            @lotto_number1[1] = number3.sample[1]
        
        elsif @lotto_red1[1]  == @lotto_number1[1]
            @lotto_number1[1] = number3.sample[1]
        
        elsif @lotto_green1[1]  == @lotto_number1[1]
            @lotto_number1[1] = number3.sample[1]
        
        elsif @lotto_number1[0] == @lotto_number1[1]
            @lotto_number1[1] = number3.sample[1]
            
        end
        
        
        
        
        if @lotto_yellow2[0] == @lotto_number2[0]         #두번째 경우의 수의 반복 제거
            @lotto_number2[0] = number3.sample[1]
        
        elsif @lotto_red2[0]  == @lotto_number2[0]
            @lotto_number2[0] = number3.sample[1]
        
        elsif @lotto_green2[0]  == @lotto_number2[0]
            @lotto_number2[0] = number3.sample[1]
        
        elsif @lotto_yellow2[1] == @lotto_number2[1] 
            @lotto_number2[1] = number3.sample[1]
        
        elsif @lotto_red2[1]  == @lotto_number2[1]
            @lotto_number2[1] = number3.sample[1]
        
        elsif @lotto_green2[1]  == @lotto_number2[1]
            @lotto_number2[1] = number3.sample[1]
        
        elsif @lotto_number2[0] == @lotto_number2[1]
            @lotto_number2[1] = number3.sample[1]
            
        end

        if @lotto_yellow3[0] == @lotto_number3[0]         #세번째 경우의 수의 반복 제거
            @lotto_number3[0] = number3.sample[1]
        
        elsif @lotto_red3[0]  == @lotto_number3[0]
            @lotto_number3[0] = number3.sample[1]
        
        elsif @lotto_green3[0]  == @lotto_number3[0]
            @lotto_number3[0] = number3.sample[1]
        
        elsif @lotto_yellow3[1] == @lotto_number3[1] 
            @lotto_number3[1] = number3.sample[1]
        
        elsif @lotto_red3[1]  == @lotto_number3[1]
            @lotto_number3[1] = number3.sample[1]
        
        elsif @lotto_green3[1]  == @lotto_number3[1]
            @lotto_number3[1] = number3.sample[1]
        
        elsif @lotto_number3[0] == @lotto_number3[1]
            @lotto_number3[1] = number3.sample[1]
        end
        
        
        if @lotto_yellow4[0] == @lotto_number4[0]         #네번째 경우의 수의 반복 제거
            @lotto_number4[0] = number3.sample[1]
        
        elsif @lotto_red4[0]  == @lotto_number4[0]
            @lotto_number4[0] = number3.sample[1]
        
        elsif @lotto_green4[0]  == @lotto_number4[0]
            @lotto_number4[0] = number3.sample[1]
        
        elsif @lotto_yellow4[1] == @lotto_number4[1] 
            @lotto_number4[1] = number3.sample[1]
        
        elsif @lotto_red4[1]  == @lotto_number4[1]
            @lotto_number4[1] = number3.sample[1]
        
        elsif @lotto_green4[1]  == @lotto_number4[1]
            @lotto_number4[1] = number3.sample[1]
        
        elsif @lotto_number4[0] == @lotto_number4[1]
            @lotto_number4[1] = number3.sample[1]
        end
        
        
        if @lotto_yellow5[0] == @lotto_number5[0]            #다섯번째 경우의 수의 반복 제거
            @lotto_number5[0] = number3.sample[1]
        
        elsif @lotto_red5[0]  == @lotto_number5[0]
            @lotto_number5[0] = number3.sample[1]
        
        elsif @lotto_green5[0]  == @lotto_number5[0]
            @lotto_number5[0] = number3.sample[1]
        
        elsif @lotto_yellow5[1] == @lotto_number5[1] 
            @lotto_number5[1] = number3.sample[1]
        
        elsif @lotto_red5[1]  == @lotto_number5[1]
            @lotto_number5[1] = number3.sample[1]
        
        elsif @lotto_green5[1]  == @lotto_number5[1]
            @lotto_number5[1] = number3.sample[1]
        
        elsif @lotto_number5[0] == @lotto_number5[1]
            @lotto_number5[1] = number3.sample[1]
            
        end



        
    end

end

