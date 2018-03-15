class ContactMailer < ApplicationMailer

  def contact_message(name, subject, phone, email, content)
    @name = name
    @subject = subject
    @phone = phone
    @email = email
    @content = content
    mail(to: 'vas.kaloidis@gmail.com', subject: 'Blue Helmet Contact - ' + name)
  end


end
