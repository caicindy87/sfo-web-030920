class CustomersController < ApplicationController
  before_action :find_customer, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :hungry)
  end

  def find_customer
    @customer = Customer.find(params[:id])
  end
end
