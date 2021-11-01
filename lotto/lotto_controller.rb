class LottoController < ApplicationController
    def lotto_html   #lolotto_controller 와 lotto_html의 연결해주는 부분
        number45 = [*1..45]  #1, 45의 배열을 만드는 부분
        @lotto1 = number45.sample(6).sort  #sample는 number45에서 6개의 값을 랜덤으로 추출한다.
        @lotto2 = number45.sample(6).sort  #sort는 6개의 숫자를 오름 차순으로 정리한다.
        @lotto3 = number45.sample(6).sort
        @lotto4 = number45.sample(6).sort
        @lotto5 = number45.sample(6).sort
    end

end
