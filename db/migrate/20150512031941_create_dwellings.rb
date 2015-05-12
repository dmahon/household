class CreateDwellings < ActiveRecord::Migration
  def change
    create_table :dwellings do |t|
      t.text :name
      t.text :address1
      t.text :address2
      t.text :city
      t.text :state
      t.text :postal
      t.text :phone

      t.timestamps null: false
    end
  end
end
