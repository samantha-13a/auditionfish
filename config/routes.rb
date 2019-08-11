Rails.application.routes.draw do
#  get 'director_form/index'
#  get 'director_form/show'
#  get 'director_form/new'
#  get 'director_form/edit'
  resources :director_form 
  get 'welcome/index'
  get 'welcome/about'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
