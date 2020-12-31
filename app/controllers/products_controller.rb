class ProductsController < ApplicationController
  def index
  end

  def add
    @item = params[:name]
    @cart = cart
    @cart << @item 
    redirect_to root_path 
  end
end
