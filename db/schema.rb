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

ActiveRecord::Schema.define(version: 0) do

  create_table "codes_current", primary_key: "code_id", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "idemployee", null: false
    t.integer "idsession", null: false
    t.integer "idleader", null: false
    t.date "date", null: false
    t.integer "idsystem_codes", default: 5, null: false
    t.integer "devplan"
    t.integer "devassign_id"
    t.integer "turnoverprobability"
    t.integer "currperfappraisal"
    t.integer "competency_version"
    t.integer "comp1_code", default: 5, unsigned: true
    t.integer "comp2_code", default: 5, unsigned: true
    t.integer "comp3_code", default: 5, unsigned: true
    t.integer "comp4_code", default: 5, unsigned: true
    t.integer "comp5_code", default: 5, unsigned: true
    t.integer "comp6_code", default: 5, unsigned: true
    t.integer "comp7_code", default: 5, unsigned: true
    t.integer "comp8_code", default: 5, unsigned: true
    t.integer "comp9_code", default: 5, unsigned: true
    t.integer "comp10_code", default: 5, unsigned: true
    t.integer "comp11_code", default: 5, unsigned: true
    t.integer "comp12_code", default: 5, unsigned: true
    t.integer "comp13_code", default: 5, unsigned: true
    t.integer "comp14_code", default: 5, unsigned: true
    t.integer "comp15_code", default: 5, unsigned: true
    t.timestamp "modified_date", default: -> { "current_timestamp()" }, null: false
    t.index ["devassign_id"], name: "fk_codes_current_devassign_id"
    t.index ["idemployee"], name: "fk_codes_current_employee"
    t.index ["idsession"], name: "fk_codes_current_session"
    t.index ["idsystem_codes"], name: "fk_codes_current_system_codes1"
  end

  create_table "financials", primary_key: "idfinancials", id: :integer, charset: "utf8", options: "ENGINE=InnoDB ROW_FORMAT=COMPACT", force: :cascade do |t|
    t.string "type", limit: 12, null: false
    t.integer "idsession", null: false
    t.string "period", limit: 15, null: false
    t.decimal "value", precision: 12, null: false
    t.integer "forecast_green"
    t.integer "forecast_blue"
    t.integer "forecast_yellow"
    t.integer "forecast_red"
  end

  create_table "session_targets", primary_key: "idtarget", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.integer "idsession", null: false
    t.integer "idleader", null: false
    t.integer "sp_target"
  end

  create_table "system_codes", primary_key: "idsystem_codes", id: :integer, default: nil, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "codename", limit: 25
    t.integer "codenumeric", null: false
    t.string "codedescription", limit: 250
    t.text "codedefinition", size: :long, null: false
  end

end
