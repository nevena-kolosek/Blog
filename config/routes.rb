Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :stories
  devise_for :users, :controllers => {:registrations => "registrations", sessions: "sessions"}
  devise_scope :user do
    root to: 'users#index'
  end
  #root to: 'home#index'
end
