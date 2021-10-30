class LottoController < ApplicationController
    def index
        @bynusu = [*1..45]
        @lotto1 = @bynusu.sample(6)
        @lotto2 = @bynusu.sample(6)
        @lotto3 = @bynusu.sample(6)
        @lotto4 = @bynusu.sample(6)
    end

end
