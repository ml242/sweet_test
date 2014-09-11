class UserMailer < ActionMailer::Base
  default from: "mattlucas@gmail.com",
          bcc: "marisa@sweetrootsnyc.com"


  def welcome_mailer(user)
    @user = user
    attachments["burrito_sm.jpg"] = File.read("#{Rails.root}/public/images/burrito_sm.jpg")
    mail(:to => user.email, :subject => "Welcome, you rocking roller!")
  end


end
