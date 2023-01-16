class PasswordResetMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_reset_mailer.send_password_reset.subject
  #
  def send_password_reset
    @user = user
    mail (to: user.email, subject: "Password Reset")
  end
end
