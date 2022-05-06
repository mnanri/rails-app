Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions' }
  resources :microposts, only: [:create, :edit, :destroy]
end
