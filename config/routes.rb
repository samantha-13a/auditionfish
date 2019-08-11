Rails.application.routes.draw do
#  get 'directors/index'
#  get 'directors/show'
#  get 'directors/new'
#  get 'directors/edit'
  resources :directors
  get 'welcome/index'
  get 'welcome/about'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
