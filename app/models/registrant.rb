class Registrant < ActiveRecord::Base
  attr_accessible :company, :email, :first_name, :last_name, :phone, :position
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 50 }
end
