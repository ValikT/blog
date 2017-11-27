
class PhotosController < ApplicationController
    before_action :authenticate_user!
  def index
      @photos = Photo.all
  end

  def new
      @photo = Photo.new
  end

  def create
      params[:photo][:category_id] = params[:category_id]
      pp @photo = current_user.photos.build(photos_params)
      redirect_to photos_path
  end

  def edit
      
  end

  def update
      
  end

  def destroy

  end

  private
  
  def photos_params
      params.require(:photo).permit(:user_id, :category, :name, :photo)

  end
end
