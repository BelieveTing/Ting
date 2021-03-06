Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}
  root 'posts#index'
  # 루트 설정을 조건을 걸면 애니로그인 에러가 뜸. 
  #근데 조건 안 걸면, 로그아웃했을 때, id: nil 에러 뜸;;;
  # devise_scope :user do
  #   authenticated :user do
  #     root 'posts#index', as: :authenticated_root
  #   end
  #   unauthenticated do
  #     root 'devise/sessions#new', as: :unauthenticated_root
  #   end<%=current_user.id%>/<%=p.owner_id
  # end
  get "posts/:id/new_profilepics" => 'posts#new_profilepics', as: :profilepics
  post "posts/:id/new_profilepics" => 'posts#new_profilepics'
  post "posts/:id/create_profilepics" => 'posts#create_profilepics', as: :save_profilepics
  get "posts/:id/edit_profilepics" => 'posts#edit_profilepics', as: :edit_profilepics
  post "posts/:id/update_profilepics" => 'posts#update_profilepics', as: :update_profilepics
  get 'find_friend/result' => 'find_friend#result'
  get 'find_friend/search' => 'find_friend#search'
  get 'posts/:id/my_friend_list'=> 'posts#my_friend_list'
  get 'posts/friend_loundge/:host_id/:lover_id' => 'hearts#toggle_heart', as: :hearts
  get 'posts/:lover_id/toggle_heart2' => 'hearts#toggle_heart2'
  get 'posts/:host_id/lovers/:lover_id' => 'posts#lovers'
  get 'posts/:user_id/my_lovers' => 'posts#my_lovers'
  get 'friends/become_friends/:owner_id' => 'friends#become_friends', as: :friends
  # get 'likes/start_love/:host_id/:id' => 'likes#start_love', as: :likes
  resources :posts, :except => [:create]
  # get "posts/:owner_id/" => "posts#show"
  post 'posts/:id/create' => 'posts#create' , as: :create_posts
  get "posts/:owner_id/update" => "posts#update"
  get	'/posts/:owner_id/make_friends/new' => 'make_friends#new'
  post	'/posts/:owner_id/make_friends' => 'make_friends#create', as: :post_make_friends
  get '/posts/:owner_id/make_friends/:id' => 'make_friends#show'
  get '/posts/:owner_id/make_friends/:id/edit' => 'make_friends#edit'
  post '/posts/:owner_id/make_friends/:id' => 'make_friends#update'
  put '/posts/:owner_id/make_friends/:id' => 'make_friends#update'
  delete '/posts/:owner_id/make_friends/:id' => 'make_friends#destroy'
  # post 'make_friends/:id/create' => 'make_friends#create' , as: :create_make_friends
  # get "make_friends/:owner_id/update" => "make_friends#update"
  # get "posts/index" => "posts#index"
  get 'posts/friend_loundge/:id' => "posts#friend_loundge", as: :friend_loundge
  get 'posts/my_loundge/:id' => "posts#my_loundge", as: :my_loundge
  # get "posts/new" => "posts#new"

  # get "posts/:id/edit" => "posts#edit", as: :edit_post

  # get "posts/:id/destroy" => "posts#destroy"
  # get "posts/:post_id/likes" => "likes#create"
  
  # post "posts/:post_id/comments" => "comments#create"
  # delete "comments/:id" => "comments#destroy"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
