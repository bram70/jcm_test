class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
    @keywords = Keyword.all
    respond_to do |format|
      format.html
      format.js
    end

  end

  def create
    @category = Category.new(category_params)
    @category.save
    if @category.valid?
      redirect_to categories_path
    else
      @keywords = Keyword.all
      flash[:errors] = @category.errors.full_messages
      respond_to do |format|
        format.html { render :edit }
        format.js { render :edit}
      end
    end
  end

  def show
    @category = Category.find(params[:id])
    @keywords = @category.keywords
  end

  def edit
    @category = Category.find(params[:id])
    @keywords = Keyword.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      redirect_to @category
    else
      @keywords = Keyword.all
      flash[:errors] = @category.errors.full_messages
      respond_to do |format|
        format.html { render :edit }
        format.js { render :edit}
      end
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:notice] = 'Category deleted successfully!'
    redirect_to :action=> 'index'
  end

  private
  def category_params
    params.require(:category).permit(:name, keyword_ids: [])
  end
end
