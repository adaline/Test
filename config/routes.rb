Test::Application.routes.draw do
  resources :pages
  resources :references, :except => :show

  root :to => 'pages#index'
end
