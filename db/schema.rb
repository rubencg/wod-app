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

ActiveRecord::Schema.define(version: 2020_04_18_032446) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "movements", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "movements_wods", id: false, force: :cascade do |t|
    t.bigint "movement_id", null: false
    t.bigint "wod_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_wods", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "wod_id", null: false
  end

  create_table "wod_logs", force: :cascade do |t|
    t.integer "minutes"
    t.integer "seconds"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "wod_id", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_wod_logs_on_user_id"
    t.index ["wod_id"], name: "index_wod_logs_on_wod_id"
  end

  create_table "wods", force: :cascade do |t|
    t.string "title"
    t.text "notes"
    t.text "description"
    t.string "week_name"
    t.boolean "is_main"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_wods_on_category_id"
  end

  add_foreign_key "wod_logs", "users"
  add_foreign_key "wod_logs", "wods"
  add_foreign_key "wods", "categories"
end
