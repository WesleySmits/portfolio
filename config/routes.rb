PortfolioNew::Application.routes.draw do
	get 'welcome/index'
	root 'home#index'
  resources :projects
  resources :articles
  resources "contacts", only: [:new, :create]
end
