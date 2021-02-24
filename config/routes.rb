Rails.application.routes.draw do
  devise_for :users
  # get 'messages/index' ⇦4841の回答で消えてた
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
