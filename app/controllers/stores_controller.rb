class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    @store.save
    if @store.valid?
      redirect_to stores_path
    else
      flash[:errors] = @store.errors.full_messages
      redirect_to stores_new_path
    end
  end

  def show
    @store = Store.find(params[:id])
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    if @store.update_attributes(store_params)
      redirect_to stores_path
    else
      flash[:errors] = @store.errors.full_messages
      redirect_to @store
    end 
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    flash[:notice] = 'Store deleted successfully!'
    redirect_to :action=> 'index'
  end
  private
  def store_params
    params.require(:store).permit(:name,:street,:number,:zipcode,:city,:country)
  end 
end
