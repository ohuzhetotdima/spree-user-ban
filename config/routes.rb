Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :users do
      member do
        post :ban
      end
    end
  end
end
