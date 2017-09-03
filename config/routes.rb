Rails.application.routes.draw do

  devise_for :users

  resources :users do
    resources :co2_estimates
  end

  resources :co2_estimates
  
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
