class Api::AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      render :show
    else
      @errors = @album.errors.full_messages
      render "api/shared/error", status: 402
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      render :show
    else
      @errors = @albums.errors.full_messages
      render "api/shared/error", status: 402
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    reder json: {}
  end

  private

  def album_params
    params.require(:album).permit(:user_id, :cover_photo_url, :title)
  end
end
