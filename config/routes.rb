Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top'
  devise_for :users, controllers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations'
  }


  resources :books, only: [:create, :index, :show, :edit, :destroy, :update]
  resources :users, only: [:show, :index, :edit, :update]
  get 'home/about' => 'home#about'


end
