Rails.application.routes.draw do
  root 'home#index'
  
  post 'sessions/create'

  resources :pages, except: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
