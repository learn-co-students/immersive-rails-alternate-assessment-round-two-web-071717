Rails.application.routes.draw do
  get '/pizzerias/new', to: 'pizzerias#new', as: 'new_pizzeria'
  post '/pizzerias', to: 'pizzerias#create', as: 'pizzerias'
  get '/pizzerias/:id', to: 'pizzerias#show', as: 'pizzeria'
  get '/pizzerias', to: 'pizzerias#index'
  get '/pizzerias/:pizzeria_id/pizzas/new', to: 'pizzas#new', as: 'new_pizza'
  post '/pizzeria/:pizzeria_id/pizzas', to: 'pizzas#create', as: 'pizzas'
  get '/pizzerias/:pizzeria_id/pizzas/:id', to: 'pizzas#show', as: 'pizza'
end
