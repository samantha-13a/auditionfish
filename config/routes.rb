Rails.application.routes.draw do
#  get 'directors/index'
#  get 'directors/show'
#  get 'directors/new'
#  get 'directors/edit'
  resources :directors
  get 'users/new'
  get 'welcome/index'
  get 'welcome/about'
  root 'welcome#index'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
