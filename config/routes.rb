Rails.application.routes.draw do
  resources :events
  get 'my_calendar', to: 'event#my_calendar'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registration: 'users/registrations'
  }
  root to: 'events#my_calendar'
  post 'posts', to: 'posts#create'
  get 'posts/:id', to: 'posts#checked'
end
