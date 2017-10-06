require "administrate/base_dashboard"

class SampleDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    sample_id: Field::String,
    matrix_id: Field::Number,
    strain_id: Field::Number,
    laboratory_id: Field::String,
    batch_id: Field::String,
    traceability_id: Field::String,
    weed_maps_id: Field::String,
    slug: Field::String,
    tatus_id: Field::Number,
    client_id: Field::Number,
    order_id: Field::Number,
    reviewer_id: Field::Number,
    issuer_id: Field::Number,
    chain_of_custody_id: Field::Number,
    is_public: Field::Boolean,
    has_photo: Field::Boolean,
    is_rush: Field::Boolean,
    is_liquid: Field::Boolean,
    turnover: Field::Number.with_options(decimals: 2),
    dollar_value: Field::Number.with_options(decimals: 2),
    full_dollar_value: Field::Number.with_options(decimals: 2),
    expires_on: Field::DateTime,
    is_expired: Field::Boolean,
    is_refunded: Field::Boolean,
    is_deleted: Field::Boolean,
    received_at: Field::DateTime,
    completed_at: Field::DateTime,
    revised_at: Field::DateTime,
    density: Field::Number.with_options(decimals: 2),
    total_mass_volume: Field::Number.with_options(decimals: 2),
    initial_mass_g: Field::Number.with_options(decimals: 2),
    final_mass_g: Field::Number.with_options(decimals: 2),
    lab_tests: Field::String.with_options(searchable: false),
    result_input: Field::String.with_options(searchable: false),
    result_output: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :sample_id,
    :matrix_id,
  ].freeze

  COLLECTION_SCOPES = [
    :listed,
    :unlisted
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :sample_id,
    :matrix_id,
    :strain_id,
    :laboratory_id,
    :batch_id,
    :traceability_id,
    :weed_maps_id,
    :slug,
    :tatus_id,
    :client_id,
    :order_id,
    :reviewer_id,
    :issuer_id,
    :chain_of_custody_id,
    :is_public,
    :has_photo,
    :is_rush,
    :is_liquid,
    :turnover,
    :dollar_value,
    :full_dollar_value,
    :expires_on,
    :is_expired,
    :is_refunded,
    :is_deleted,
    :received_at,
    :completed_at,
    :revised_at,
    :density,
    :total_mass_volume,
    :initial_mass_g,
    :final_mass_g,
    :lab_tests,
    :result_input,
    :result_output,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :sample_id,
    :matrix_id,
    :strain_id,
    :laboratory_id,
    :batch_id,
    :traceability_id,
    :weed_maps_id,
    :slug,
    :tatus_id,
    :client_id,
    :order_id,
    :reviewer_id,
    :issuer_id,
    :chain_of_custody_id,
    :is_public,
    :has_photo,
    :is_rush,
    :is_liquid,
    :turnover,
    :dollar_value,
    :full_dollar_value,
    :expires_on,
    :is_expired,
    :is_refunded,
    :is_deleted,
    :received_at,
    :completed_at,
    :revised_at,
    :density,
    :total_mass_volume,
    :initial_mass_g,
    :final_mass_g,
    :lab_tests,
    :result_input,
    :result_output,
  ].freeze

  # Overwrite this method to customize how samples are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(sample)
  #   "Sample ##{sample.id}"
  # end
end
