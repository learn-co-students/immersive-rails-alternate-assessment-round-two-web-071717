class PizzasController < ApplicationController
  def new
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.new(pizza_params)
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza.pizzeria = @pizzeria
    @pizza.save
    redirect_to pizza_path(@pizzeria,@pizza)
  end

  def show
    @pizza = Pizza.find(params[:id])
    @pizzeria = @pizza.pizzeria
  end

  private
  def pizza_params
    params.require(:pizza).permit(:name,:description)
  end
end
