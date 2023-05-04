Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations' }

  root "projects#home"
  resources :projects do
    collection do
      get "drafts", to: "projects#drafts"
    end
  end
  resources :blogs do
    collection do
      get "drafts", to: "blogs#drafts"
    end
  end
  resources :contacts, only: [:new, :create]
end
