class AccountTypesController < ApplicationController
  def show
    render json: AccountType.find(params[:id])
  end
end
