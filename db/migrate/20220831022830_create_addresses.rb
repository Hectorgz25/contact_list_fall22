class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :state
      t.string :city
      t.integer :zip
      t.string :country
      t.belongs_to :contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
