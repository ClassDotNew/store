class ProductsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :edit, :update, :destroy, :create]
  def index

    # if params["sort_attribute"] && params["order"]
    #   @products = Product.order(params["sort_attribute"] => params["order"])
    # elsif params["cheap_stuff"]
    #   @products = Product.where("price < ?", '5')
    # elsif params["search_content"]
    #     @products = Product.where("name LIKE ?", "%#{params['search_content']}%")
    # else
    #   @products = Product.all
    # end

    # @products = Category.find_by(name: params[:category]).products.where(user_id: current_user.id)
    @products = Product.all
  end

  def new
    @product = Product.new
    if current_user && current_user.admin

    else
      redirect_to "/products"
    end
  end

  def create
    @product = Product.new(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      price: params[:price],
      supplier_id: params["supplier"]["supplier_id"],
      user_id: current_user.id
      )
    if @product.save
      flash[:success] = "Product Created"
      redirect_to "/products/#{@product.id}"
    else
      render 'new.html.erb'
    end

  end

  def show
    if params["id"] == 'random'
      @product = Product.all.sample
    else
      @product = Product.find_by(id: params[:id])
    end
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      price: params[:price]
      )

    flash[:success] = "Product Updated"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    flash[:warning] = "Product Created"
    redirect_to "/"
  end

end

