Rails.application.routes.draw do
  devise_for :users
  root to: "questions#index"
  resources :questions
  resources :blogs, only: [:index, :new, :create]
end
