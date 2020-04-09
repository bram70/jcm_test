class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.create(params.require(:store).permit(:name,:street,:number,:zipcode,:city,:country))
    if @store.valid?
      redirect_to stores_path
    else
      flash[:error] = @store.errors.full_messages
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
    @store.update(params.require(:store).permit(:name,:street,:city,:country,:number))
    redirect_to store_path(@store)
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to stores_path
  end
end
