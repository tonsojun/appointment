class CreateInsurances < ActiveRecord::Migration[6.1]
  def change
    create_table :insurances do |t|
      t.string :company
      t.string :policy_number
      t.string :phone
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
