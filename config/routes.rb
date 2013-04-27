Droidli::Application.routes.draw do
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

  resources :licenses, :only => [:new, :index, :create]
  resources :projects, :only => [:new, :index, :create], :path => :braries

  root :to => 'home#index'
end
