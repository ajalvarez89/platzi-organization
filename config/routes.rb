Rails.application.routes.draw do
  devise_for :users
  resources :tasks do
    resources :notes, only: %i[create], controller: 'tasks/notes'
  end
  resources :categories

  root to: 'tasks#index'
end
