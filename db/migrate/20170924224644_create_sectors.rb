class CreateSectors < ActiveRecord::Migration[5.1]
  def change
    create_table :sectors do |t|
      t.string :name
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
