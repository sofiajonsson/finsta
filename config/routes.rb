Rails.application.routes.draw do

root to: 'home#index'
  # get 'search/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :edit, :update, :show, :destroy]

  get 'search' => 'search#index'

end
