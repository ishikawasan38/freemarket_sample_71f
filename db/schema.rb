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

ActiveRecord::Schema.define(version: 2020_03_19_010543) do

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user"
    t.integer "brand"
    t.integer "category", null: false
    t.string "name", null: false
    t.string "description", null: false
    t.string "status", null: false
    t.string "price", null: false
    t.string "shipping_charges", null: false
    t.string "days_to_ship", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end