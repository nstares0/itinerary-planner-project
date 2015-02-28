Rails.application.routes.draw do
  root 'itineraries#index'

  # resources :itineraries do
  #   resources :attractions do
  #     post '/reviews' => 'reviews#create', as: 'reviews'
  #   end
  #   post '/reviews' => 'reviews#create', as: 'reviews'
  # end


  resources :itineraries do
   resources :attractions
  end

  resources :itineraries do
    post '/reviews' => 'reviews#create', as: 'reviews'
  end 
 
  resources :attractions do
    post '/reviews' => 'reviews#create', as: 'reviews'
  end


  # get 'attractions/show'

  # get 'attractions/add'

  # get 'attractions/edit'

  # get 'itineraries/add'

  # get 'itineraries/index'

  # get 'itineraries/show'

  # get 'itineraries/edit'

  # get 'access/signup'

  # get 'access/login'

  # get 'access/edit'
end
