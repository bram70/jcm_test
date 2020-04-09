class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
    @keywords = Keyword.all
  end

  def create
    @category = Category.new(category_params)
    @category.save
    if @category.valid?
      redirect_to categories_path
    else
      flash[:error] = @category.errors.full_messages
      redirect_to categories_new_path
    end
  end

  def show
    @category = Category.find(params[:id])
    @keywords = @category.keywords 
  end

  def edit
    @category = Category.find(params[:id])
    @keywords = Keyword.all
  end

  def update
    @category = Category.find(params[:id])
    @category.update(params.require(:category).permit(:name,:keyword))
    redirect_to store_path(@category)

  end

  def destroy
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
