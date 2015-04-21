class AccountsController < ApplicationController
  def show
    render json: Account.first
  end

  def index
    render json: Account.all
  end

  def create
    account = Account.create!(account_params)
    render json: account
  end

  private

  def account_params
    params.permit(
      :balance,
      :bank_id,
      :account_type_id,
      :user_id
    )
  end
end
