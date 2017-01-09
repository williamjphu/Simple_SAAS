# Inherited from Rails
class ContactMailer < ActionMailer::Base

	def contact_mail(first_name, last_name, email, message)
		default_to: 'jiepeng.huwu@sjsu.edu'
		
		@first_name = first_name
		@last_name = last_name
		@email = email
		@message = message

		mail(from: emal, subject: "Contact form from website")
	end
end