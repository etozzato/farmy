class CreateSkus < ActiveRecord::Migration[5.1]
  def change
    create_table :skus do |t|
      t.string :name
      t.boolean :is_active, default: true
      t.references :company, foreign_key: true
      t.string :variety
      t.float  :caliber
      t.text :description

      t.string :availability_data
      t.string :harvest_forecast
      t.string :perishability_period
      t.float :available_kg
      t.float :price_per_kg
      t.float :price_per_unit
      t.float :minimum_sale_quantity
      t.integer :delivery_method
      t.string :delivery_from
      t.string :delivery_to
      t.text :additional_information

      t.text :origin_location
      t.float :lon
      t.float :lat

      t.integer :production_type
      t.integer :production_certification

      t.references :product, foreign_key: true
      t.references :sub_sector, foreign_key: true
      t.references :sector, foreign_key: true
      t.references :family, foreign_key: true

      t.timestamps
    end
  end
end
