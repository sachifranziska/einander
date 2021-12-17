Rails.application.routes.draw do
  devise_for :users
  root to: "questions#index"
  resources :questions do
    resources :suggestions, only: [:create]
  end
  resources :suggestions, only: [:index]
  resources :blogs, only: [:new, :create, :show, :edit, :update, :destroy]
end
