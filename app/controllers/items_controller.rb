class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id]) #finding the parent
    @item = @list.items.build(item_params)
    if @item.save
      redirect_to list_path(@list)
    else
      render "lists/show"
    end
  end

  # PATCH - /lists/:list_id/:id
  def update
    # What item am I trying to update?
    @item = Item.find(params[:id])
    @item.status = params[:item][:status] # 0,1
    @item.save

    redirect_to list_path(@item.list)

    # I can use that data to update the item described in the URL
  end

  private
    def item_params
      params.require(:item).permit(:description)
    end

end
