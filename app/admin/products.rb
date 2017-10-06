ActiveAdmin.register Product do
  permit_params :name, :is_active
  config.sort_order = 'id_asc'
  menu priority: 2

  index do
    selectable_column
    column :id
    column :name
    column :is_active
    column :family
    column :sub_sector
    column :sector
    actions
  end

end
