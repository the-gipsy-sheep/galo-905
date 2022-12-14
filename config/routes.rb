Rails.application.routes.draw do
  devise_for :users
  resources :follows

  root to: "pages#home"

  resources :lists, shallow: true do
    resources :gifts
  end

  # LO ANTERIOR, ES LO MISMO QUE DECIR: (Shallow, nestea solo con new y create)
  # resources :lists do
  #   resources :gifts, only: %i[new create]
  # end

  resources :gifts, only: %i[show index edit update destroy] do

    resources :comments, only: %i[create]
  end

  # reservar regalo
  post '/gift/:id/reservar', to: "gifts#reserve", as: "reserve_gift"
  post '/gift/:id/desreservar', to: "gifts#unreserve", as: "unreserve_gift"

  resources :comments, only: %i[update destroy]
  resources :users, only: %i[index show]

  # Followers model
  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"
  get '/users/:id/followers', to: "users#followers", as: "user_followers"
  get '/users/:id/followees', to: "users#followees", as: "user_followees"

  get '/search', to: "pages#searches", as: "search"

end
