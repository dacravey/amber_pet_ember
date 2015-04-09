Rails.application.routes.draw do
  namespace :api do
    resources :pets
    resources :users
    resources :messages
  end
  devise_for :users, controllers: { sessions: 'sessions' }
end
