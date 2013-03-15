class RegistrantMailer < ActionMailer::Base
  default from: 'roofimon@gmail.com'

  def welcome_mail(registrant)
    @registrant = registrant
    @url  = 'http://agilesingapore2013.odd-e.com'
    mail(:to => @registrant.email, :subject => 'Registration for Agile Singapore 2013')
  end
end