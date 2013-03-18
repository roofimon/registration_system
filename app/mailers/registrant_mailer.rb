class RegistrantMailer < ActionMailer::Base
  #default from: 'registration@agilesingapore.org'
  def email_name
    mail :subject => "Mandrill rides the Rails!",
         :to      => "recipient@example.com",
         :from    => "you@yourdomain.com"
  end

  def welcome_mail(registrant)
    @registrant = registrant
    @url  = 'http://agilesingapore2013.odd-e.com'
    mail :from => 'registration@agilesingapore.org', :to => @registrant.email, :subject => 'Registration for Agile Singapore 2013'
  end
end
