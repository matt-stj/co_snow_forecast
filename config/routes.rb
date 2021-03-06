Rails.application.routes.draw do

root 'home#index'

get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'

resources :resorts, only: [:show], param: :slug

end
