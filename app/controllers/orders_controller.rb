class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    # product = Product.find(params[:product_id])
    # subtotal = product.price * params[:quantity].to_i
    # tax = subtotal * 0.09
    # total = subtotal + tax
    # order = Order.new(
    #   user_id: session[:user_id],
    #   quantity: params[:quantity],
    #   product_id: params[:product_id],
    #   subtotal: subtotal,
    #   total: total,
    #   tax: tax
    #   )
    # order.save
    # flash[:success] = "You made a new order of #{params[:quantity]} for ...a product"
    # redirect_to "/orders/#{order.id}"
    unless current_user
      redirect_to "/products"
    end

    @carted_products = current_user.carted_products.where(status: 'carted')
    order1 = Order.new(
      user_id: current_user.id,
      )
    order1.save
    @carted_products.update_all(order_id: order1.id, status: "purchased")

    order1.calculate_all_totals


    # order_tax = order_subtotal * 0.09
    # order_total = order_subtotal + order_tax

   redirect_to "/orders/#{order1.id}"
  end

  def show
    @order = Order.find(params[:id])
  end
end
