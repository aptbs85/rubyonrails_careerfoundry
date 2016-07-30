class UserMailer < ApplicationMailer
  default from: "info@cfnewname.herokuapp.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => @email,
        :to => 'jzamparas@gmail.com',
        :subject => "A new contact form message from #{name}")
  end
end