class QuestionMailer < ApplicationMailer
  default from: "question@example.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def question_confirmation(user)
    @user = user

    mail to: user.email, subject: "Question Confirmation"
  end
end
