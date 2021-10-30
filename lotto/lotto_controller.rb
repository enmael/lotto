class LottoController < ApplicationController
    def index
        @number45 = [*1..45]
        @lotto1 = @number45.sample(6)
        @lotto2 = @number45.sample(6)
        @lotto3 = @number45.sample(6)
        @lotto4 = @number45.sample(6)
        @lotto5 = @number45.sample(6)
    end

end
