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

ActiveRecord::Schema.define(version: 20180329093541) do

  create_table "currencies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "full_name"
    t.string   "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plan_rules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "plan_id"
    t.integer  "position"
    t.float    "prize",      limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["plan_id"], name: "index_plan_rules_on_plan_id", using: :btree
  end

  create_table "plans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "currency_id"
    t.float    "ticket_price",          limit: 24
    t.integer  "participant_threshold"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["currency_id"], name: "index_plans_on_currency_id", using: :btree
  end

  create_table "rounds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "plan_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_rounds_on_plan_id", using: :btree
  end

  create_table "tickets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "number"
    t.float    "prize",          limit: 24
    t.string   "transaction_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "position"
    t.integer  "round_id"
    t.index ["number"], name: "index_tickets_on_number", using: :btree
    t.index ["round_id"], name: "fk_rails_f97a57b3e0", using: :btree
    t.index ["transaction_id"], name: "index_tickets_on_transaction_id", using: :btree
  end

  add_foreign_key "plan_rules", "plans"
  add_foreign_key "plans", "currencies"
  add_foreign_key "rounds", "plans"
  add_foreign_key "tickets", "rounds"
end
