class CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.find(params[:id])
    CustomerItem.create!(customer_id: @customer.id, item_id: params[:item_id])
    redirect_to "/customers/#{@customer.id}"
  end
end