class HomeController < ApplicationController
  def index
    @pokemon = Pokemon.order("id ASC")

    @data = @pokemon.limit(5).page(params[:page])
    #@pagination = @pokemon.page(7)
  end

  def show
    #@dogsshow = Dog.find(params[:id])
  end
end
