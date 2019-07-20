require 'byebug'
module Api
  module V1
        class NumbersController < ApplicationController
      
     

      def generatePick()
        @lottery =Number.generatePick(5)
        render json: {data: @lottery}
      end
    end
  end
  private
  def number_params
    permit.(:pick, :lottery_id)
  end
end
