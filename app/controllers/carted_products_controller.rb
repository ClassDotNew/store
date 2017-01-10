class CartedProductsController < ApplicationController
  before_action :authenticate_user!
  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: 'carted'
      )
    carted_product.save
    redirect_to "/carted_products"
  end

  def index

    if current_user && current_user.carted_products.where(status: 'carted').count > 0
      @carted_products = current_user.carted_products.where(status: 'carted')
      render 'index.html.erb'
    else
      redirect_to "/products"
    end
  end

  def destroy

    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: "removed")
    flash[:success] = "Product removed"
    redirect_to "/carted_products"
  end
end
