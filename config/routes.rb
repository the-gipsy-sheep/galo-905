Rails.application.routes.draw do
  devise_for :users

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

  resources :comments, only: %i[update destroy]
  resources :users, only: %i[index show]
end
