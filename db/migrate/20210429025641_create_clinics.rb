class CreateClinics < ActiveRecord::Migration[6.1]
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :zip

      t.timestamps
    end
  end
end
