Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }

  root 'home#welcome'

  resources :users, only: [] do
    resources :chats
  end
end
