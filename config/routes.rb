PortfolioNew::Application.routes.draw do
	get 'welcome/index'
	root 'home#index'
  resources :projects
  resources :articles

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  
  match '/about-me' => 'pages#about_me', :via => [:get], :as => 'about_me'
  match '/resume' => 'pages#resume', :via => [:get], :as => 'resume'

end
