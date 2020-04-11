class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def create
    @product = Product.new(product_params)
    @product.save
    if @product.valid?
      redirect_to products_path
    else
      flash[:errors] = @product.errors.full_messages
      redirect_to products_new_url
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to products_path 
    else
      @categories = Category.all
      flash[:errors] = @product.errors.full_messages
      redirect_to edit_product_url
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = 'Category deleted successfully!'
    redirect_to :action=> 'index'
  end

  private
  def product_params
    params.require(:product).permit(:name, :color, :size, :price, :category_id, store_ids: [])
  end
end
