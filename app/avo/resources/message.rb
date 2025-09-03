# frozen_string_literal: true

class Avo::Resources::Message < Avo::BaseResource
  def fields
    field :id, as: :id
    field :name, as: :text
    field :delivery, as: :has_one, polymorphic_as: :deliverable, nested: true
  end
end
