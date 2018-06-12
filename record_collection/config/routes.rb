Rails.application.routes.draw do
  
  namespace :admin do
      resources :albums

      root to: "albums#index"
    end
  resources :albums

  root 'albums#index'

end
