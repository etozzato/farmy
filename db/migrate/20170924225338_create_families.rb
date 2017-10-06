class CreateFamilies < ActiveRecord::Migration[5.1]
  def change
    create_table :families do |t|
      t.string :name
      t.references :sub_sector, foreign_key: true
      t.references :sector, foreign_key: true
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
