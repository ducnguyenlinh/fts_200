Rails.application.routes.draw do
  devise_for :users
  resources :users , only: %i(show update index)

  resources :courses, only: %i(index) do
    resources :subjects, only: %i(show index) do
      resources :tests

      resources :reports
    end
  end
  resources :user_subjects, only: %i(create)
  resources :user_courses, only: %i(create)
  resources :histories, only: %i(index)

  root "users#home"
end
