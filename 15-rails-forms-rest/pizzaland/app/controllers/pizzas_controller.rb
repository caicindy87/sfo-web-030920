class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
    # @pizza = Pizza.find_by(id: params[:id])
  end

  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.new(pizza_params)

    if @pizza.save
      redirect_to pizza_path(@pizza)
    else
      render "new"
    end
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :cost, :size)
  end
end
