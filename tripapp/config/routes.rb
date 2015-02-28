Rails.application.routes.draw do

  root 'itineraries#index'

  resources :itineraries do
    resources :destinations do
      post '/reviews' => 'reviews#create', as: 'reviews'
    end
    post '/reviews' => 'reviews#create', as: 'reviews'
  end  

end
