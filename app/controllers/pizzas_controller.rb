class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.update(pizza_params)
      flash[:notice] ='Pizza successfully ordred'
      redirect_to pizza_path(@pizza)
    else
      render :new
    end
  end



  private
  def pizza_params
    params.require(:pizza).permit(:size, :first_topping, :second_topping, :third_topping, :cost)
  end
end
