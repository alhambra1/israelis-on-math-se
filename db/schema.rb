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

ActiveRecord::Schema.define(version: 20160830034810) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pages", force: :cascade do |t|
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stackexchange_users", force: :cascade do |t|
    t.json     "badge_counts"
    t.string   "account_id"
    t.boolean  "is_employee"
    t.datetime "last_modified_date"
    t.datetime "last_access_date"
    t.integer  "reputation_change_year"
    t.integer  "reputation_change_quarter"
    t.integer  "reputation_change_month"
    t.integer  "reputation_change_week"
    t.integer  "reputation_change_day"
    t.integer  "reputation"
    t.datetime "creation_date"
    t.string   "user_type"
    t.integer  "user_id"
    t.string   "website_url"
    t.string   "link"
    t.string   "profile_image"
    t.string   "display_name"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
