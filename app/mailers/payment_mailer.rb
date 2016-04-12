class PaymentMailer < ApplicationMailer

  def payment_email(user, plan, registration)
    @user = user
    @plan = plan
    @registration = registration
    mail(to: @user.email, subject: 'Sample Email')
  end

end
