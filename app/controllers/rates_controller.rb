class RatesController < ApplicationController

    def create
        @rate = current_user.rates.build(rate_params)
        if @rate.save
            render json: @rate
        else
            render json: {message: "Rate not created!"}
        end
    end

    private

    def rate_params
        params.require(:rate).permit(:date, :time)
    end
end