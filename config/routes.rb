Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  resources :users, only: [:show]
  root to: 'landing_pages#index'

  resources :forum_threads do
    resources :forum_posts
    resources :replies_posts    
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
