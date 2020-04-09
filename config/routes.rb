Rails.application.routes.draw do
  resources :admins
  resources :gigs
  resources :lessons

  # get '/gigs/requests', to: 'gigs#requests'
  # get '/lessons/requests', to: 'lessons#requests'
end
