class DraftEvent < ActiveRecord::Base
  belongs_to :destination
  belongs_to :event

  after_create :attach_event

  def attach_event
    due_date_start = self.due_date.change(hour: 0, min: 0, sec: 0)
    due_date_end = self.due_date.change(hour: 23, min: 59, sec: 59)
    event = Event.where("delivery_date >= ? and delivery_date <= ?", due_date_start, due_date_end).first
    self.update_attribute(:event_id, event.id) if event
  end
end
