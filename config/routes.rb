Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :lists do
    resources :gifts, only: %i[index new create]
  end

  resources :gifts, only: %i[show edit update destroy] do
    resources :comments, only: :create
  end

  resources :comments, only: %i[update destroy]
end
