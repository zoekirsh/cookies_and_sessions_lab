class ProductsController < ApplicationController
  def index
  end

  def add
    @item = params[:name]
    cart = session[:cart] ||= []
    cart << @item 
    cart
    redirect_to root_path 
  end
end
