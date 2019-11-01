Rails.application.routes.draw do
  resources :teams do
    member do
      get 'add_member:id', :action => 'add_member', :as => 'add_member'
      get 'invite/:id', :action => 'invite', :as => 'invite'
    end
  end
  #root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :stories
  
  #ovo dodaje rute koje odgovaraju akcijama


  devise_for :users, :controllers => {registration: "registrations", sessions: "sessions", invitations: 'invitations'}
 
  
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
