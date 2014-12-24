# Класс, представляющий собой сущность "Курьер"
class Runner < ActiveRecord::Base
  has_many :events
  has_many :destinations, through: :events

  validates :first_name, presence: true, format: {with: /^\p{Cyrillic}*$/, multiline: true}
  validates :last_name, presence: true

  has_secure_password validations: false

  def hollywood_star?
    ['Brad', 'Tom'].include?(self.first_name)
  end

  # метод, позволяющий аутентифицировать пользователя
  def authenticate(password)
  end
end
