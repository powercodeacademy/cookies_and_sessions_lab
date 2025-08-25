require 'pry'

class ProductsController < ApplicationController
  def index
    @cart = cart
  end

  def add
    cart << product_params[:product]
    redirect_to root_path
  end

  private

  def product_params
    params.permit(:product)
  end
end
