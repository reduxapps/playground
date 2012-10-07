Playground::Application.routes.draw do
  authenticated :user do
    root :to => 'home#welcome'
  end
  root :to => "home#index"
  devise_for :users, :skip => [:sessions]
  as :user do
    get 'login' => 'devise/sessions#new', :as => :new_user_session
    post 'login' => 'devise/sessions#create', :as => :user_session
    delete 'logout' => 'devise/sessions#destroy', :as => :destroy_user_session
    
    get 'signup' => 'devise/registrations#new', :as => :new_user_registration
    post 'users' => 'devise/registrations#create', :as => :user_registration    
  end
  resources :users, :only => [:show, :new]
end
