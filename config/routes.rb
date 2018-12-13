Rails.application.routes.draw do
  

  get 'user/my_tasks/:user_id' => 'my_tasks#show_user_tasks'

  devise_for :users, defaults: { format: :json }

  resources :tasks
  resources :my_tasks 
  resources :profiles
  resources :appointments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
