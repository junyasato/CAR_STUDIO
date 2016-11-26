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

ActiveRecord::Schema.define(version: 20161126050538) do

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "category_id"
    t.integer  "user_id"
    t.string   "title"
    t.text     "desc",        limit: 65535
    t.string   "image"
    t.string   "item_order"
    t.integer  "view_count"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "body_type_cars", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "car_id"
    t.integer  "body_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "body_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.decimal  "base_price",                       precision: 10
    t.decimal  "total_price",                      precision: 10
    t.integer  "model_year"
    t.decimal  "mileage",                          precision: 10
    t.decimal  "displacement",                     precision: 10
    t.datetime "vehicle_inspection"
    t.integer  "repaired"
    t.text     "url",                limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "maker_id"
    t.string   "car_name"
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "desc",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "article_id"
    t.integer  "item_type"
    t.string   "title"
    t.text     "desc",       limit: 65535
    t.string   "image"
    t.text     "link_url",   limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "makers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
