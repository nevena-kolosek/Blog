Rails.application.routes.draw do
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :stories
  
  #ovo dodaje rute koje odgovaraju akcijama


  devise_for :users, :controllers => {:registrations => "registrations", sessions: "sessions"}
 
  
  devise_scope :user do
    root to: 'users#index'
    get 'profile' => "users#profile"
  end
  #root to: 'home#index'


   resources :users do
    member do
      get 'profile'
    end
  end
end
