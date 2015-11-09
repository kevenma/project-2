class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]


  def index
    @items = Item.all
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy
  end

  def addtocart
    @item = Item.find(params[:id])
    @shopping_cart = ShoppingCart.find(current_user.shopping_cart.id)
    @shopping_cart.items << @item
    redirect_to shopping_cart_path(current_user.shopping_cart)
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :price, :description, :img_url)
    end
end
