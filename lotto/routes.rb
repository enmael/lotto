Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get '/lotto23', to: 'lotto#lotto_html'
    # get '/lotto23' 는 사이트의 주소
    # to는 'lotto#ll',lotto_html 가져온다.
end
