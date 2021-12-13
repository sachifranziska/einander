Rails.application.routes.draw do
  devise_for :users
  root to: "questions#index"
  resources :questions do
    resources :suggestions, only: [:index, :create]
  end
  resources :blogs, only: [:new, :create, :show, :edit, :update, :destroy]
end
