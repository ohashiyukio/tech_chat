Rails.application.routes.draw do
  root to: 'chats#index'
  resources :chats, only: [:index, :show, :new, :create] do
    resources :questions, only: :create
  end
end
