class MessageMailer < ActionMailer::Base
  default from: "coddeys@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.send_email.subject
  #
  def send_email(message)
    @message = message
    mail to: "china@pozitive.biz, coddeys@gmail.com", subject: "Request from website"
  end
end
