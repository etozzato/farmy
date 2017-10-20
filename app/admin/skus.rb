ActiveAdmin.register Sku do
  permit_params :name,
                :is_active,
                :product_id,
                :company_id,
                :variety,
                :caliber,
                :description,
                :availability_data,
                :harvest_forecast,
                :perishability_period,
                :available_kg,
                :origin_location,
                :price_per_kg,
                :price_per_unit,
                :minimum_sale_quantity,
                :production_type,
                :production_certification

  config.sort_order = 'id_asc'
  menu priority: 1
  preserve_default_filters!
  filter :product,  input_html: { class: 'chosen-select' }
  filter :family,  input_html: { class: 'chosen-select' }
  filter :sub_sector,  input_html: { class: 'chosen-select' }
  filter :sector,  input_html: { class: 'chosen-select' }


  index do
    selectable_column
    column :id
    column :name
    column :is_active
    actions
    column :company
    column :product
    column :family
    column :sub_sector
    column :sector
    actions
  end

  form do |f|

    f.inputs "Produtor" do
      f.input :company, input_html: { class: 'chosen-select' }
    end

    f.inputs "Categorização do Produto" do
      f.input :product, input_html: { class: 'chosen-select' }
      f.input :is_active
    end

    f.inputs "Descrição do Produto" do
      f.input :variety
      f.input :caliber
      f.input :description
    end

    f.inputs "Disponibilidade do Produto" do
      f.input :availability_data
      f.input :harvest_forecast
      f.input :perishability_period
      f.input :available_kg
      f.input :origin_location
    end

    f.inputs "Preço do Produto" do
      f.input :price_per_kg
      f.input :price_per_unit
      f.input :minimum_sale_quantity
    end

    f.inputs "Modo de produção do Produto" do
      f.input :production_type, as: :select, collection: [['Tradicional', 1], ['Biológico', 2], ['Integrado', 3]], input_html: { class: 'chosen-select' }
      f.input :production_certification, as: :select, collection: [['Biológica', 1], ['Boas práticas agrícolas', 2], ['Outras', 3]], input_html: { class: 'chosen-select' }
    end

    f.actions
  end

end
