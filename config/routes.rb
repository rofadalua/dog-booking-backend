Rails.application.routes.draw do
  
  namespace :api do
    namespace :b1 do
     resources :users do
      resources :bookings 
    
      end
    end
  end 
end
