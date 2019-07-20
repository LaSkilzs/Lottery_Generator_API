require 'byebug'
module Api
  module V1
    class LotteriesController < ApplicationController
  

      def index
        @lotteries = Lottery.all
        render json: {data: @lotteries}
      end

      def drawing
        @drawing = Lottery.drawing(params[:name], params[:date])
         render json: {data: @drawing}
      end

      def show
        @lottery = Lottery.find(params[:id]).numbers
         render json: {status: 'SUCCESS', message: "Lottery", data: @lottery}, status: :ok  
      end

      def create
    
        @lottery = Lottery.create(name: params[:name], date: params[:date])
         if @lottery.save
          render json: @lottery
         else
          render json: @lottery.errors
         end
      end

      private
      def lottery_params
        permit.(:name, :date)
      end


    end
  end
end
