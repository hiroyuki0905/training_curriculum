Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'calendars#index'
  resources :tweets do
    resources :comments, only: :create
  end
  resources :calendars
end
