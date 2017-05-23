class Site::HomeController < SiteController

  def index
    @advs = Advertisement.where(status: :open)
  end
end
