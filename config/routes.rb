Rails.application.routes.draw do
  get '/show-video/:id', to: 'home#show', as: :show_video
  
  devise_for :users
  devise_scope :user do
    resources :channels
    resources :videos
    get 'sign_in', to: 'devise/sessions#new'
  end

  namespace :api do
    namespace :v1 do
      resources :videos, only: [:update]
    end
  end

  root to: "home#index"
end
