Centralestudantil::Application.routes.draw do
  devise_for :users
  resources :institutions
  root to: 'pages#home'
end
