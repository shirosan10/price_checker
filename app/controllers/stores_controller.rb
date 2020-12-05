class StoresController < ApplicationController

  def new
    @store = Store.new
  end

  def create
    @store = Store.create params.require(:store).permit(:content, :image) # POINT
    redirect_to @store
  end

  def show
    @store = Store.find(params[:id])
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    @store.update params.require(:store).permit(:image) # POINT
    redirect_to @store
  end
end
