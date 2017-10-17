class CreateNeighbours < ActiveRecord::Migration[5.1]
  def change
    create_table :neighbours do |t|
      t.string     :name
      t.references :district
      t.references :area
    end
  end
end
