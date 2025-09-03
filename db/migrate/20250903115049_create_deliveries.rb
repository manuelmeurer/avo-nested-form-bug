class CreateDeliveries < ActiveRecord::Migration[8.0]
  def change
    create_table :deliveries do |t|
      t.string :subject
      t.text :body
      t.references :deliverable, polymorphic: true
      t.timestamps
    end
  end
end
