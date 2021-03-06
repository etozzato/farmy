ActiveAdmin.register Company do
  permit_params :name,
                :description,
                :nif,
                :address,
                :district_id,
                :area_id,
                :neighbour_id,
                :phone,
                :mobile_phone,
                :email,
                :email2,
                :website,
                :facebook,
                :twitter,
                :google_plus,
                :is_company,
                :is_public,
                :is_active,
                product_ids: []

  config.sort_order = 'id_asc'
  menu priority: 2

  index do
    selectable_column
    column :id
    column :name
    column :is_company
    column :address
    column :mobile_phone
    column :email
    column :website
    actions
  end

  sidebar "Sectores", only: :show do
    table_for company.sectors do
      column :name
    end
  end

  sidebar "Produtos", only: :show do
    table_for company.skus do
      column :name
    end
  end

  form do |f|

    response = HTTParty.get("http://www.nif.pt/?json=1&credits=1&key=#{ENV['NIF_KEY']}")
    nif_credits =
      response.parsed_response['credits'].map{|k,v| "#{k} #{v}"}.join(', ') if response.parsed_response['credits']
    f.inputs "Company LOOKUP" do
      f.input :nif, label: "Enter the NIF of the company to perform an API lookup (#{nif_credits|| 'n/a'})", input_html: { class: 'lookup' }
      f.input :name
      f.input :description
    end

    f.inputs "Products" do
      f.input :products, input_html: { class: 'chosen-select' }
    end

    f.inputs "BBB" do
      f.input :address
      f.input :city
      f.input :district
      f.input :area
      f.input :neighbour
      f.input :phone
      f.input :mobile_phone
      f.input :email
      f.input :email2
    end

    f.inputs "CCC" do
      f.input :website
      f.input :facebook
      f.input :twitter
      f.input :google_plus
    end

    f.inputs "DDD" do
      f.input :is_company
      f.input :is_public
      f.input :is_active
    end

    f.actions
  end
end
