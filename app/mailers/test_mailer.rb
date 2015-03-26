class TestMailer < ActionMailer::Base
  default from: "from@example.com"

  def test_email(email_address)
    mail(to: email_address, subject: "This is a test of Fresher Mail System")
  end
end
