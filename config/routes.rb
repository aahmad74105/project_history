Rails.application.routes.draw do
  resources :projects do
    member do 
      patch :update_status
    end
      resources :comments 
  end

  root "projects#index"
end
