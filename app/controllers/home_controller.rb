class HomeController < ApplicationController
  def index
    @pokemon = Pokemon.order("id ASC")

    @data = @pokemon.page(params[:page])
  end

  def show
    #show stuff: TBD
  end
end
