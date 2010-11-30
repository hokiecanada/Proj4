P4::Application.routes.draw do
  resources :tasks
  resources :systems
  resources :components

  resources :entries do
	resources :comments
  end

  devise_for :users
  devise_for :admin
  
  namespace :admin do
	root :to => "admin#index"
  end

  match "/entries.rss" => "entries#rss"
  
  root :to => "entries#index"

end
