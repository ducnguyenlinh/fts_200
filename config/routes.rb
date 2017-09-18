Rails.application.routes.draw do
  devise_for :users
  resources :users

  resources :courses do
    resources :subjects
  end
  resources :subjects

  root "users#home"
end
