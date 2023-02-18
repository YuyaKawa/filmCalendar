class TheatersController < ApplicationController
    def index
        @theaters = Theater.all.order(created_at: 'desc')
        @prices = [] #最安値を算出
        for i in 0..@theaters.size-1
            @prices.push(@theaters[i].p_default)
        end
    end
end
