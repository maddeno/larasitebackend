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

ActiveRecord::Schema.define(version: 2020_04_09_181942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  create_table "gigs", force: :cascade do |t|
    t.integer "admin_id"
    t.string "client_name"
    t.string "client_email"
    t.string "client_phone"
    t.string "date"
    t.string "start_time"
    t.string "end_time"
    t.string "location"
    t.string "description"
    t.boolean "public"
    t.string "rep"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.integer "admin_id"
    t.string "client_name"
    t.string "client_email"
    t.string "client_phone"
    t.string "date"
    t.string "time"
    t.string "location"
    t.string "student_name"
    t.integer "student_age"
    t.string "student_experience"
    t.string "student_goals"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
