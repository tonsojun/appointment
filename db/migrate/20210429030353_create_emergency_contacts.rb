class CreateEmergencyContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :emergency_contacts do |t|
      t.string :name
      t.string :phone1
      t.string :phone2
      t.string :email
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
