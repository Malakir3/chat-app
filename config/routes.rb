Rails.application.routes.draw do
  devise_for :users
  # get 'messages/index' ⇦4841の回答で消えてた
  root to: "messages#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
