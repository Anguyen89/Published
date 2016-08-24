class Api::ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      render :show
    else
      render json: @image.errors.full_messages, status: 422
    end
  end

  private

  def image_params
    params.require(:image).permit(:image_url)
  end

end
