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
end
