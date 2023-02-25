Rails.application.routes.draw do
  get 'users/index'
#  get 'schedule/hello'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
end
