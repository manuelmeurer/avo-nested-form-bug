class Delivery < ApplicationRecord
  belongs_to :deliverable, polymorphic: true, inverse_of: :delivery

  attribute :non_db_attribute

  def non_db_attribute=(value)
    raise value.class.inspect
  end
end
