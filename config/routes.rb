Rails.application.routes.draw do
  resources :admins
  resources :gigs
  resources :lessons
  
  get '/public', to: 'gigs#public'

  namespace :api do
    namespace :v1 do
      resources :admins, only: [:create]
      post '/login', to: 'auth#create'
    end
  end

end
