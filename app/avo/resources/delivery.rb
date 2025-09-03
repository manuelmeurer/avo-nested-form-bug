# frozen_string_literal: true

class Avo::Resources::Delivery < Avo::BaseResource
  def fields
    field :id, as: :id
    field :subject, as: :text
    field :body, as: :textarea
    field :non_db_attribute, as: :text
    field :deliverable, as: :belongs_to, polymorphic_as: :deliverable, types: [::Message]
  end
end
