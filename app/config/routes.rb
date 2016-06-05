Rails.application.routes.draw do
  root 'static_pages#index'

  get '/about' => 'static_pages#about_us'
  get '/login' => 'sessions#new'
end
