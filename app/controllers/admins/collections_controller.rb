class Admins::CollectionsController < ApplicationController
  before_action :set_collection, only: [:show, :edit, :update, :destroy]

  def index
    @collection = Collection.all
  end

  def new
    @collection = Collection.new
  end

  def show
    @assignments = Assignment.where(collection_id: params[:id])
  end

  def create
    @collection = Collection.new(collection_params)
    @collection.user_id = current_user.id 
 
    if @collection.save
      redirect_to admins_collections_path
      flash[:notice] = 'Module succesvol aangemaakt'
    else
      render 'new'
      @collection.errors.messages.each do |c|
        flash[:alert] = c[1].first
      end
    end
  end

  def update
    @collection = Collection.find(params[:id])
 
    if @collection.update(admins_collection)
      redirect_to @collection
    else
      render 'edit'
    end
  end

  def destroy
    @collection = Collection.find(params[:id])
    @collection.destroy
 
    redirect_to admins_collections_path
  end

  private
  def collection_params
    params.require(:collection).permit(:name, :description, :year, :user_id)
  end

  def set_collection
    @collection = Collection.find(params[:id])
  end
end



