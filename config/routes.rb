Rails.application.routes.draw do
  devise_for :planners, controllers: {
    sessions:      'planners/sessions',
    passwords:     'planners/passwords',
    registrations: 'planners/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  root "projects#index"
  resources :projects, only: [:show] do
    resources :investments, only: [:show] do
      resources :supporters, only: [:new, :create]
    end
  end
  resources :planners, only: [:index] do
    resources :projects, only: [:new, :create]
  end
end
