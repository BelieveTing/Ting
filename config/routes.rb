Rails.application.routes.draw do
  
  devise_for :users, :controllers => { omniauth_callbacks: 'user/omniauth_callbacks'}
  
  get 'friends/become_friends/:id' => 'friends#become_friends', as: :friends
  
  resources :posts, :except => :create
  post 'posts/:id' => 'posts#create' , as: :create_posts
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'posts#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
