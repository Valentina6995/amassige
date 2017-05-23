Rails.application.routes.draw do

  namespace :api do
    # Creates show and index routes for public advertisements
    resources :advertisements, only: [:show, :index]

    namespace :user do
      # Creates CRUD routes for user advertisements
      resources :advertisements
    end
  end

  devise_for :users
  get 'site/home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "site/home#index"
end
