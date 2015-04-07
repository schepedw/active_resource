class AccountsController < ApplicationController
  def show
    render json: Account.first
  end
end
