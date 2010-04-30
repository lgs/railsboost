
Railsboost::Application.routes.draw do
  root :to => 'templates#index'
  resources :templates
  resource :user_session
  match '/login' => 'user_sessions#new', :as => :login
  match '/logout' => 'user_sessions#destroy', :as => :logout
  match '/:id.rb' => 'templates#show', :as => :template_short, :format => 'rb'
  namespace :admin do
      resources :commands
  end

  #match '/' => 'templates#index'
  match '/:controller(/:action(/:id))'
end

