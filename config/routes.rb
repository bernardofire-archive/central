Centralestudantil::Application.routes.draw do
  devise_for :users
  resources :institutions
  resources :courses
  root to: 'pages#home'
end
