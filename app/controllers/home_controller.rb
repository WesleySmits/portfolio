class HomeController < ApplicationController
	layout "home"
	
	def index
		@projects = Project.all
	end
end
