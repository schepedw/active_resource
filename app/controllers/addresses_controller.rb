class AddressesController < ApplicationController
  def show
    render json: Address.find(params[:id])
  end

end
