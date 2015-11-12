class CartController < ApplicationController
  def add
    id = params[:id]
    # if cart is created , use that cart , it not create new one
    if session[:cart] then
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
  end
  #if the product has een added to cart , add one more
if cart[id] then
   cart[id] = cart[id] + 1
 else
   cart[id] = 1
 end
 redirect_to :action => :index
 end

 def clearcart
   session[:cart] = nil
   redirect_to :action => :index
 end
 def index
   if session[:cart] then
     @cart = session[:cart]
   else
     @cart ={}
   end
end

end
