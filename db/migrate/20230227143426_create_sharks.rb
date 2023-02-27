class CreateSharks < ActiveRecord::Migration[7.0]
  def change
    create_table :sharks do |t|
      t.string :name
      t.integer :age
      t.string :type
      t.string :description
      t.integer :price
      t.string :diet
      t.string :picture_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
