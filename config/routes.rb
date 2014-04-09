Traininged::Application.routes.draw do
  devise_for :managers
  get "home/index"

  root to: 'home#index'
end
