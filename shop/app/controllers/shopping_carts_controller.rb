class ShoppingCartsController < ApplicationController
  before_action :set_shopping_cart, only: [:show, :edit, :update, :destroy]
  def index
    @shopping_carts = ShoppingCart.all
  end

  def show

  end
  def removefromcart
    @item = Item.find(params[:id])
    @shopping_cart = ShoppingCart.find(current_user.shopping_cart.id)
    @shopping_cart.items << @item
    redirect_to shopping_cart_path(current_user.shopping_cart)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_cart
      @shopping_cart = ShoppingCart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_cart_params
      params.require(:user).permit(:user, :item, :cc)
    end
end
