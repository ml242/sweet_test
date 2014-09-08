class UserMailer < ActionMailer::Base
  default from: "marisa@sweetroots.com",
          :bcc => "mattlucas@gmail.com"


  def welcome_mailer(user)
    @user = user
    attachments["burrito_sm.jpg"] = File.read("#{Rails.root}/public/images/burrito_sm.jpg")
    mail(:to => user.email, :subject => "Welcome you rocking roller!")
  end

  # def admin_mailer(admin)
  #   @admin = admin
  #   mail(:to => admin.email, :subject => "Welcoming a new rocking roller!")
  # end


end
