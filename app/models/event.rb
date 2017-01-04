class Event < ApplicationRecord
  belongs_to :contact
  validates :other, length: { maximum: 255 }
end
