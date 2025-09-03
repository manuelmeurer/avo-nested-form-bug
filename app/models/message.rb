class Message < ApplicationRecord
  has_one :delivery, as: :deliverable, inverse_of: :deliverable
  accepts_nested_attributes_for :delivery
end
