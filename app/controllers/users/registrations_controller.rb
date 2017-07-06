class Users::RegistrationsController <Devise::RegistrationsController
	# Override
	def create
		# Copy - inherit
		super do |resources|
			if params[:plan]
				resource.plan_id = params[:plan]
				if resources.plan.id == 2
					resource.save_with_payment
				else
					resource.save
				end
			end
		end 
	end
end