class ContactMailer < ApplicationMailer
    def contact_email(contact)
    @contact = contact
    mail to: "tom.brookes15@gmail.com", subject: "New contact message"
  end
end
