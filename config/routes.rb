Rails.application.routes.draw do

  resources :customers
  devise_for :users
  
  resources :jobs do
    resources :customers
    resources :tasks
  end
  
    resources :tasks do
      resources :notes
    end
    resources :jobs do
      resources :notes
      
    end
 
    #This needs to be here, otherwise error (as notes resource didn't exist on its own)
    resources :notes
 

    resources :users do
      resources :jobs
    end
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
 
  authenticated :user do
    root :to => "jobs#index"
  end
  unauthenticated :user do
    devise_scope :user do 
      get "/" => "devise/sessions#new"
    end
  end
end
