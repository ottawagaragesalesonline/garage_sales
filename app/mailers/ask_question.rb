class AskQuestion < ActionMailer::Base

  def ask_question_notification(sender)
    @sender = sender
    mail(:to => "ottawagaragesalesonline@gmail.com",
         :from => sender.email,
         :subject => "New #{sender.support_type}")
 end
end
