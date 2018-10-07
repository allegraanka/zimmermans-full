class CreatePatrons < ActiveRecord::Migration[5.2]
  def change
    create_table :patrons do |t|
      t.text :firstname
      t.text :lastname
      t.text :email
      t.text :address
      t.integer :loaves

      t.timestamps
    end
  end
end
