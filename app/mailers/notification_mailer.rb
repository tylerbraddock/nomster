class NotificationMailer < ApplicationMailer
  default from: "no-reply@cfl-app.com"

  def comment_added
    mail(to: "tyler.braddock@yahoo.com",
      subject: "A comment has been added to your place")
  end

end
