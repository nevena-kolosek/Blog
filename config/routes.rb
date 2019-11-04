Rails.application.routes.draw do
  resources :teams do
    member do
      get 'add_member:id', :action => 'add_member', :as => 'add_member'
      get 'invite/:id', :action => 'invite', :as => 'invite'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :stories 
  resources :tags do
    member do
      get 'new/:id', :action => 'new', :as => 'new'
      post 'create/:id', :action => 'create', :as => 'create'

    end
  end

  devise_for :users, :controllers => {registration: "registrations", sessions: "sessions", invitations: 'invitations'}
   #root to: 'home#index'
  
  devise_scope :user do
    root to: 'users#index'
    get 'profile' => "users#profile"
  end

   resources :users do
    member do
      get 'profile'
    end
  end
end
