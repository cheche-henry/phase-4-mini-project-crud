Rails.application.routes.draw do
  resources :spices, only: [:index, :create, :update, :destroy]
  get '/spices/:id/rating', to: 'spices#rating', as: 'spice_rating'
  patch '/spices/:id/rating', to: 'spices#update_rating', as: 'update_spice_rating'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end