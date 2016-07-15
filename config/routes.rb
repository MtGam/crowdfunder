Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'projects#index'
resources :projects

resources :sessions, only: [:new, :create, :destroy]
resources :users

get 'users/:id/projects' => 'users#projects'

end
