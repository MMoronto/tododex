class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :description
      t.integer :list_id
      # Wiring the Schema - The database - Foreign Key
      # Wire my model with the association.
      t.timestamps
    end
  end
end
