class MembersController < ApplicationController

    def lodded_in_user
        @rates = current_user.rates
        if signed_in?
            render json: { user: current_user, rates: @rates, status: 200 }
        else
            render json: { message: 'You need to sign in first' }
        end
    end

    def logout
        reset_session
        render json: { message: 'You logged out!' }
    end
end
