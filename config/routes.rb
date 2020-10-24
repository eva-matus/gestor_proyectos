Rails.application.routes.draw do
  get 'proyects/index'
  root 'proyects#index'
  post 'proyects/create'
  post 'proyects/index'
  get 'dashboard', to: 'proyects#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
