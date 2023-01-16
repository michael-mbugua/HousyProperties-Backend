class PasswordResetMailer < ApplicationMailer
  default from: 'noreply@example.com'

  def send_password_reset(user)
    @user = user
    @url  = edit_password_reset_url(@user.password_reset_token)
    mail(to: @user.email, subject: 'Reset your password')
  end
end
