Rails.application.routes.draw do
  devise_for :users
  root to: 'tasks#index'
  resources :lists, only: [:new, :create, :edit, :update, :destroy] do
    resources :task_card, only: [:new, :create, :edit, :update, :destroy]
  end
end
