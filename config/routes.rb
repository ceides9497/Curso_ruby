Rails.application.routes.draw do
  root 'static_pages#index'

  get '/about' => 'static_pages#about_us'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :users
end
