class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string     :name
      t.string     :description
      t.string     :nif
      t.string     :address
      t.string     :city
      t.float      :longitude
      t.float      :latitude
      t.references :district
      t.references :area
      t.references :neighbour
      t.string     :phone
      t.string     :mobile_phone
      t.string     :email
      t.string     :email2
      t.string     :website
      t.string     :facebook
      t.string     :twitter
      t.string     :google_plus
      t.boolean    :is_public, default: true
      t.boolean    :is_active, default: true
      t.boolean    :is_company, default: true
      t.timestamps
    end
  end
end
