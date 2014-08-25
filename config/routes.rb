Centralestudantil::Application.routes.draw do
  devise_for :users
  resources :institutions
  resources :courses
  resources :periods
  root to: 'pages#home'
end
