class PagesController < ApplicationController
	# Add home page
	def home
		@basic_plan = Plan.find(1)
		@pro_plan = Plan.find(2)
	end

	# Add about page
	def about
	end
end