Rails.application.routes.draw do
  resources :superpowers
  resources :women
  get '/favoritesuperpower', to: 'superpowers#favorite', as: 'favoritesuperpower'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
