Rails.application.routes.draw do
  get 'home/index'
  resources :sharks do
	  resources :posts
  end
  resources :tags
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ]
  get 'login'  => 'author_sessions#new', :as => :login
  get 'logout' => 'author_sessions#destroy', :as => :logout
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
