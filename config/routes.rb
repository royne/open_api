Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      
      resources :users
      resources :courses
      resources :books

    end
  end 
end
