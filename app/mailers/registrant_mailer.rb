class RegistrantMailer < ActionMailer::Base
  def welcome_mail(registrant)
    @registrant = registrant
    @url  = 'http://agilesingapore2013.odd-e.com'
    mail :from => 'registration@agilesingapore.org', :to => @registrant.email, :subject => 'Registration for Agile Singapore 2013'
  end
end
