class Destination < ActiveRecord::Base
  has_many :events
  has_many :runners, through: :events

end
