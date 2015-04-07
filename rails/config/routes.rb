Rails.application.routes.draw do
  namespace :api do
    resources :pets
  end
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
end
