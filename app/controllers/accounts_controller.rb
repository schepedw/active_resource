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


=begin
  id              | integer                     | not null default nextval('accounts_id_seq'::regclass)
  balance         | double precision            | default 0.0
  account_type_id | integer                     | not null
  created_at      | timestamp without time zone | not null
  updated_at      | timestamp without time zone | not null
  user_id         | integer                     | not null
=end

  def account_params
    params.permit(
      :balance,
      :bank_id,
      :account_type_id,
      :user_id
    )
  end
end
