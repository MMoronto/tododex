class ListsController < ApplicationController

  def index
    @lists = List.all
    # render 'lists/index.html.erb'
  end

  def show
    @list = List.find(params[:id])
  end

end
