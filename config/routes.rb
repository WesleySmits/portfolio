PortfolioNew::Application.routes.draw do
	get 'welcome/index'
	root 'home#index'
  resources :projects
  resources :articles
end
