# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171017102329) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.integer "district_id"
    t.index ["district_id"], name: "index_areas_on_district_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "nif"
    t.string "address"
    t.string "city"
    t.float "longitude"
    t.float "latitude"
    t.integer "district_id"
    t.integer "area_id"
    t.integer "neighbour_id"
    t.string "phone"
    t.string "mobile_phone"
    t.string "email"
    t.string "email2"
    t.string "website"
    t.string "facebook"
    t.string "twitter"
    t.string "google_plus"
    t.boolean "is_public", default: true
    t.boolean "is_active", default: true
    t.boolean "is_company", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_companies_on_area_id"
    t.index ["district_id"], name: "index_companies_on_district_id"
    t.index ["neighbour_id"], name: "index_companies_on_neighbour_id"
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
  end

  create_table "families", force: :cascade do |t|
    t.string "name"
    t.integer "sub_sector_id"
    t.integer "sector_id"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sector_id"], name: "index_families_on_sector_id"
    t.index ["sub_sector_id"], name: "index_families_on_sub_sector_id"
  end

  create_table "neighbours", force: :cascade do |t|
    t.string "name"
    t.integer "district_id"
    t.integer "area_id"
    t.index ["area_id"], name: "index_neighbours_on_area_id"
    t.index ["district_id"], name: "index_neighbours_on_district_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "sub_sector_id"
    t.integer "sector_id"
    t.integer "family_id"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id"], name: "index_products_on_family_id"
    t.index ["sector_id"], name: "index_products_on_sector_id"
    t.index ["sub_sector_id"], name: "index_products_on_sub_sector_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skus", force: :cascade do |t|
    t.string "name"
    t.boolean "is_active", default: true
    t.integer "company_id"
    t.string "variety"
    t.float "caliber"
    t.text "description"
    t.string "availability_data"
    t.string "harvest_forecast"
    t.string "perishability_period"
    t.float "available_kg"
    t.float "price_per_kg"
    t.float "price_per_unit"
    t.float "minimum_sale_quantity"
    t.integer "delivery_method"
    t.string "delivery_from"
    t.string "delivery_to"
    t.text "additional_information"
    t.text "origin_location"
    t.float "lon"
    t.float "lat"
    t.integer "production_type"
    t.integer "production_certification"
    t.integer "product_id"
    t.integer "sub_sector_id"
    t.integer "sector_id"
    t.integer "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_skus_on_company_id"
    t.index ["family_id"], name: "index_skus_on_family_id"
    t.index ["product_id"], name: "index_skus_on_product_id"
    t.index ["sector_id"], name: "index_skus_on_sector_id"
    t.index ["sub_sector_id"], name: "index_skus_on_sub_sector_id"
  end

  create_table "sub_sectors", force: :cascade do |t|
    t.string "name"
    t.integer "sector_id"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sector_id"], name: "index_sub_sectors_on_sector_id"
  end

end
