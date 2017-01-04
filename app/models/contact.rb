#Updated (Cole Albers, 11/27/16): Added validation for contact model.
#Updated (Andrew Fox, 11/28/2016): Added overwrite for name attribute reader.
#Updated (Andrew Fox, 11/30/2016): Add email regular expression validator.
class Contact < ApplicationRecord
  before_save { name.downcase! }
  validates :name,  presence: true, length: { maximum: 255 }
  validates :phone, length: { maximum: 255 }
  validates :address, length: { maximum: 255 }
  validates :email, length: { maximum: 255 }
  has_one :prayer, autosave: true
  has_one :event, autosave: true
  has_one :personality, autosave: true
  has_one :service, autosave: true

  #Created (Andrew Fox, 11/28/2016): Overwrite default to get titleized string.
  def name
    read_attribute(:name).try(:titleize)
  end
end
