Rails.application.routes.draw do
  namespace :api do
    resources :pets
    resources :users
    resources :messages
    resources :findings do
      resources :pets
    end
    resources :losts do
      resources :pets
    end
  end
  devise_for :users, controllers: { sessions: 'sessions' }
end
