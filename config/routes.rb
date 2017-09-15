Rails.application.routes.draw do
  devise_for :users

  root "user#home"
  resources :courses do
    resources :subjects
  end
  resources :subjects
end
