class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_us.subject
  #
  def contact_us(sender, message)
    @sender = sender
    @message = message
    
    mail to: "astefanovic101@gmail.com"
  end
end
