class AdminMailer < ApplicationMailer
  def update_email(current_admin, admin)
    @current_admin = current_admin
    @admin = admin
    mail(to: @admin.email, subject: "Seus dados foram alterados!" )
  end
end
