class Event < ActiveRecord::Base
  belongs_to :runner
  belongs_to :destination
  after_create :notify_runner

  def title
    [self.runner.last_name, self.destination.name, self.delivery_date].join(" - ")
  end


  def notify_runner
    EventMailer.runner_notification_email(self).deliver
  end
end
