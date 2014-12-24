class Runner < ActiveRecord::Base
  scope :id_greater_than_zero_ordered_by_first_name, lambda { where("id > 0").order("first_name desc") }
  has_many :events
  has_many :destinations, through: :events

  validates :first_name, presence: true, format: {with: /^\p{Cyrillic}*$/, multiline: true}
  validates :last_name, presence: true

  has_secure_password validations: false

  def hollywood_star?
    ['Brad', 'Tom'].include?(self.first_name)
  end

  def authenticate(password)
  end
end
