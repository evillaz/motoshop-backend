Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  namespace :api do
    namespace :v1 do
      resources :motorcycles do
        member do
          patch :update_attribute
        end
      end
      resources :customers
      resources :sales do
        member do
          patch :update_receipt
          post :add_payment
          delete 'remove_payment/:payment_id', action: :remove_payment
        end
      end
    end
  end
end
