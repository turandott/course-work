class PhotosController < ApplicationController
  def update
    # params[:avatar] contains an ActionDispatch::Http::UploadedFile object
    Current.propert.photo.attach(params.require(:photo))
    redirect_to Current.propert
  end
  end