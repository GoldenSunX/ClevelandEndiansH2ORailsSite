class Prayer < ApplicationRecord
  belongs_to :contact
  validates :prayer, length: { maximum: 255 }
  validates :comments, length: { maximum: 255 }
end
