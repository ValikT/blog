class PhotosController < ApplicationController
before_action :authenticate_user!
def index
@photos = Photo.all
end

<<<<<<< HEAD
def new
@photo = Photo.new
end
=======
  def create
      params[:photo][:category_id] = params[:category_id]
      params[:photo][:user_id] = current_user.id
   	@photo = Photo.create(photo_params)
      redirect_to photos_path
  end
>>>>>>> 7f272d788c6705f4cc08ef0a2cca6f0e25548b21

def edit
end

def destoy
end

def update
end

def create
params[:photo][:category_id] = params[:category_id]
params[:photo][:user_id] = current_user.id
@photo = Photo.create(photo_params)
redirect_to photos_path
end

private

def photo_params
params.require(:photo).permit(:user_id, :category_id, :name, :photo)
end

end