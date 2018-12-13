Rails.application.routes.draw do
<<<<<<< HEAD
  get 'tags/new'
  get 'tags/create'
  get 'tags/show'
  get 'tags/update'
  get 'tags/destroy'
=======
>>>>>>> 7af691d7d5c358474db859cda51aa52e56554fcc
  get 'categories/index'
  devise_for :admins
  devise_for :users

<<<<<<< HEAD
  resources :users, only: [:show]
  root to: 'landing_pages#index'
  get 'tags/:tag', to: 'forum_threads#index', as: :tag

  resources :forum_threads do

    resources :forum_posts
    resources :replies_posts    
  end

  resources :tags
=======
  resources :users
  root to: 'landing_pages#index'

  resources :forum_threads do
    resources :forum_posts
    resources :replies_posts    
  end
>>>>>>> 7af691d7d5c358474db859cda51aa52e56554fcc
  resources :categories , only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
