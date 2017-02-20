class ProductsController < ApplicationController
  def home
    @products = Product.all
  end
  def index
    # if params[:category].blank?
    #   @products = Product
    # else
    #   @category_id = Category.find_by(name:params[:category]).id
    #   @products = Product.where(:category_id => @category_id).order("created_at DESC")
    # end
    @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
  end
  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)

      flash[:notice] = "你已成功将#{@product.title}加入购物车"
    else
      flash[:notice] = "你的购物车内已有此物品"
    end
    redirect_to :back
  end
end
