# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_08_131840) do
  create_table "blogs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "films", force: :cascade do |t|
    t.string "film_name"
    t.integer "running_time"
    t.string "delete_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theaters", force: :cascade do |t|
    t.string "theater_name"
    t.string "place"
    t.integer "p_default"
    t.integer "p_first"
    t.integer "p_mon"
    t.integer "p_tue"
    t.integer "p_wed"
    t.integer "p_thu"
    t.integer "p_fri"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
