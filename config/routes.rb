Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :teams do
    member do
      get 'add_member:id', :action => 'add_member', :as => 'add_member'
      get 'invite/:id', :action => 'invite', :as => 'invite'
    end
  end

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

  resources :sites do
    get 'settings' => "sites#settings"
    get 'home' => "sites#home"
  end

end
