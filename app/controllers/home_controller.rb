class HomeController < ApplicationController
  def index
    @pokemon = Pokemon.order("id ASC")

    #@data = @dogs.page(params[:page])
    # @pagination = @dogs.page(7)
  end

  def show
    #@dogsshow = Dog.find(params[:id])
  end
end
