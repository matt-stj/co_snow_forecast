class UserMailer < ApplicationMailer
  default from: 'gnarpow.info@gmail.com'

  def powder_alert(user)
    @user = user
    mail(to: @user.email, subject: "Powder Alert!")
  end


end
