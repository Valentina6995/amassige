class HomeController < ApplicationController

  def index
    @advs = Advertisement.where(status: 0)
  end
end
