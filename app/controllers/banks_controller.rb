class BanksController < ApplicationController
  def show
    render json: Bank.find(params[:id])
  end
end
