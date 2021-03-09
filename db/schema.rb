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

ActiveRecord::Schema.define(version: 2021_02_26_094446) do

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
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "business_address"
    t.text "business_description"
    t.integer "business_rating"
    t.integer "business_founding"
    t.integer "business_stores"
    t.string "business_delivery"
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
  end

  create_table "technologies", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "points"
    t.string "photo", array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
end
