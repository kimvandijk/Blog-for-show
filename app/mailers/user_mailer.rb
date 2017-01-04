class UserMailer < ApplicationMailer
	default from: "your-email@example.com"

  def contact_form(email, name, message)
  @message = message
   	mail(:from => email,
        :to => 'info@dutchkdesign.nl',
        :subject => "A new contact form message from Blog user #{name}")
  end

  def welcome(user)
  @appname = "Blog for Show"
  mail( :to => user.email,
        :subject => "Welcome to #{@appname}!")
	end
end
