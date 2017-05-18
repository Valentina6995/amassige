class AdvertisementsController < ApplicationController

  before_action :authenticate_user!

  def new
  end

  def create
    adv = current_user.advertisements.new adv_params
    if adv.save
      render json: adv, serializer: Complete::AdvertisementSerializer
    else
      render json: {error: adv.errors.messages}, status: :unprocessable_entity
    end
  end

  def update
    begin
      adv = current_user.advertisements.find params[:id]
      adv.update adv_params

      if adv.errors.empty?
        render json: adv, serializer: Complete::AdvertisementSerializer
      else
        render json: {error: adv.errors.messages}, status: :unprocessable_entity
      end
    rescue Exception => e
      render json: {error: 'advertisment not found'}, status: :not_found
    end
  end

  def edit
  end

  def destroy
    begin
      adv = current_user.advertisements.find params[:id]
      adv.destroy
      head :ok, content_type:'text/plain'
    rescue Exception => e
      render json: {error: 'advertisment not found'}, status: :not_found
    end
  end

  def index
    advs = current_user.advertisements
    render json: advs, each_serializer: Minimal::AdvertisementSerializer
  end

  def show
    begin
      adv = current_user.advertisements.find params[:id]
      render json: adv, serializer: Complete::AdvertisementSerializer
    rescue Exception => e
      render json: {error: 'advertisment not found'}, status: :not_found
    end
  end

  private
    def adv_params
      params.require(:advertisement).permit(:status, :price, :adv_type, :description)
    end
end
