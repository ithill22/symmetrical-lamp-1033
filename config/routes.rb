Rails.application.routes.draw do
  get '/customers/:id', to: 'customers#show'
  post '/customers/:id', to: 'customers#create'

  get '/items', to: 'items#index'

  get '/supermarkets/:id', to: 'supermarkets#show'
end
