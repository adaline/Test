Test::Application.routes.draw do
  get 'logout' => "sessions#destroy", :as => :logout
  get 'login' => "sessions#new", :as => :login
  resources :sessions, :only => [:new, :create, :destroy]

  resources :pages, :except => :show

  root :to => 'pages#index'
  match ':url' => 'pages#view', :as => :show_page
end
