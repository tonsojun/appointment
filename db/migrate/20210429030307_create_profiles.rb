class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :birth
      t.boolean :marital_status
      t.string :home_phone
      t.string :cell_phone
      t.boolean :gender
      t.string :license
      t.string :drivers_license
      t.references :specialty, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
