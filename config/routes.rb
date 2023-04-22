Rails.application.routes.draw do

  devise_for :users
  root "projects#home"
  resources :projects do
  end
  resources :blogs do
  end
  resources :contacts, only: [:new, :create]
end
