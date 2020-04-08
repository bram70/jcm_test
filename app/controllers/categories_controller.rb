class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(params.require(:category).permit(:name,:keyword))
    if @category.valid?
      redirect_to categories_path
    else
      flash[:error] = @category.errors.full_messages
      redirect_to categories_new_path
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
