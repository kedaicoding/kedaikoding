Rails.application.routes.draw do

  devise_for :admins
  devise_for :users

  resources :users
  root to: 'landing_pages#index'
  get 'tags/:tag', to: 'forum_threads#index', as: :tag

  resources :forum_threads do

    resources :forum_posts
    resources :replies_posts    
  end

  resources :tags
  resources :categories , only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
