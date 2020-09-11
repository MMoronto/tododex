class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :description
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
