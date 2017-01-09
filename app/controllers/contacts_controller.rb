class ContactsController < ApplicationController
	# Handle a new form 
	def new
		@contact = Contact.new
	end

	# Handle form submission
	def create
		#Create an instance variable
		@contact = Contact.new(contact_params)

		if @contact.save
			first_name = params[:contact][:first_name]
			last_name = params[:contact][:last_name]
			email = params[:contact][:email]
			message = params[:contact][:email]
			ContactMailer.contact_email(first_name, last_name, email, message).deliver

			flash[:success] = "Message sent!"
			redirect_to new_contact_path
		else
			flash[:danger] = "Message not sent. Error occured"
			redirect_to new_contact_path
		end
	end

	# Require for security reasons
	private
		def contact_params
			params.require(:contact).permit(:first_name, :last_name, :email, :message)
		end
end