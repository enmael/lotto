=begin
###########################################################################################
    *프로그램명: 로또 추첨사이트 css
    *소스파일명: routes.rb
    *작성자: 장승배
    *버전: 1.0.0
    *생성자: 장승배
    *생성일자: 2021.10.20
    *최종수정일자: 2021.11.30
    *최종수정자: 장승배
    *최종수정내용: 주석의 추가와 주소 변경
    --------------------------------------------------------------------------------------
    *내용: lotto_controller.rb 와  lotto_html.erb를 연결해며 사이트의 주소를 생성해준다.
           -사이트 주소: https://lott--qnkee.run.goorm.io//lotto23

###########################################################################################
=end
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get '/lotto23', to: 'lotto#lotto_html'
    # get '/lotto23' 는 사이트의 주소
    # to는 'lotto#ll',lotto_html 가져온다.
end
