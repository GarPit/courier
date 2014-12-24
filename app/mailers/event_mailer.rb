class EventMailer < ActionMailer::Base
  default from: "noreply@runnersapp.com"

  def runner_notification_email(event)
    @event = event
    @runner = @event.runner
    mail(:to => @runner.email, :subject => "Для вас есть новое событие")
  end
end
