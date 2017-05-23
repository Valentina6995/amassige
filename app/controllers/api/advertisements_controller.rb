class Api::AdvertisementsController < ApiController

  def index
    advs = Advertisement.where(status: :open)
    advs = advs.where('description like ?', "%#{params[:desc]}%") unless params[:desc].nil?

    render json: advs, each_serializer: Minimal::AdvertisementSerializer
  end

  def show
    begin
      adv = Advertisement.find params[:id]
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
