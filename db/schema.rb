# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_08_091553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "businessproducts", force: :cascade do |t|
    t.string "product_name"
    t.string "product_sales"
    t.integer "product_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "product_image", array: true
  end

  create_table "cafeandbars", force: :cascade do |t|
    t.string "business_address"
    t.text "business_description"
    t.integer "business_rating"
    t.integer "business_founding"
    t.integer "business_stores"
    t.string "business_website"
    t.integer "business_number"
    t.string "business_card"
    t.string "business_image", array: true
    t.string "business_opening"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "business_title"
    t.integer "total_scans"
    t.string "business_category"
    t.text "promotion_photos", default: [], array: true
  end

  create_table "flats", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gadgets", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "points"
    t.string "photo", array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string "business_address"
    t.text "business_description"
    t.integer "business_rating"
    t.integer "business_founding"
    t.integer "business_stores"
    t.string "business_website"
    t.integer "business_number"
    t.string "business_card"
    t.string "business_image", array: true
    t.string "business_opening"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "business_title"
    t.integer "total_scans"
    t.string "business_category"
    t.text "promotion_photos", default: [], array: true
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "business_address"
    t.text "business_description"
    t.integer "business_rating"
    t.integer "business_founding"
    t.integer "business_stores"
    t.string "business_delivery_service"
    t.string "business_website"
    t.integer "business_number"
    t.string "business_card"
    t.string "business_image", array: true
    t.string "business_opening"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "business_title"
    t.integer "total_scans"
    t.string "search"
    t.boolean "business_delivery"
    t.boolean "restaurant_type"
    t.boolean "business_cost"
    t.string "cusine"
    t.string "price"
    t.string "delivery"
    t.string "business_category"
    t.text "promotion_photos", default: [], array: true
  end

  create_table "sneakers", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "points"
    t.string "photo", array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sports", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "winpoints"
    t.string "photo", array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "business_address"
    t.text "business_description"
    t.integer "business_stores"
    t.string "business_website"
    t.integer "business_number"
    t.string "business_card"
    t.string "total_scans"
    t.string "business_image", array: true
    t.string "business_opening"
    t.string "business_category"
    t.text "promotion_photos", default: [], array: true
    t.string "business_title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "business_founding"
    t.string "business_rating"
    t.float "latitude"
    t.float "longitude"
    t.string "mondaytime"
    t.string "thuesdaytime"
    t.string "wednesdaytime"
    t.string "thursdaytime"
    t.string "fridaytime"
    t.string "saturdaytime"
    t.string "sundaytime"
  end

  create_table "taggings", id: :serial, force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "technologies", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "points"
    t.string "photo", array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "stock", default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.string "full_name"
    t.string "avatar_url"
    t.integer "house_number"
    t.string "street_name"
    t.integer "plz"
    t.string "city"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "winpoints", default: 0
    t.string "photo", array: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "taggings", "tags"
end
