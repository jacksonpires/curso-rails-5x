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

ActiveRecord::Schema.define(version: 2018_08_24_230643) do

  create_table "coins", force: :cascade do |t|
    t.string "description"
    t.string "acronym"
    t.string "url_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mining_type_id"
    t.index ["mining_type_id"], name: "index_coins_on_mining_type_id"
  end

  create_table "mining_types", force: :cascade do |t|
    t.string "description"
    t.string "acronym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
