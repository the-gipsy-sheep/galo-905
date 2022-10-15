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

  resources :gifts, only: %i[show edit update destroy] do
    resources :comments, only: :create
  end

  resources :comments, only: %i[update destroy]
end
