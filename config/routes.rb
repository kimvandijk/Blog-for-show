Rails.application.routes.draw do
  
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}, :controllers => { :registrations => "user_registrations" }
 

  resources :users do
  	resources :articles
  	resources :comments
  end

  resources :articles do
  	resources :comments
  end

  root 'welcome#index'

  get 'welcome/index'

  get 'static_pages/contact'

  get '/users/sign_up'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
