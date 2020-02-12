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

ActiveRecord::Schema.define(version: 2020_02_10_160825) do

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.index ["name"], name: "index_statuses_on_name"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "title"
    t.string "tracker", null: false
    t.string "external_id", null: false
    t.string "url", null: false
    t.string "priority"
    t.string "assignee"
    t.integer "position", null: false
    t.integer "status_id", null: false
    t.index ["status_id"], name: "index_tickets_on_status_id"
    t.index ["tracker", "external_id"], name: "external_id_index", unique: true
  end

  add_foreign_key "tickets", "statuses"
end
