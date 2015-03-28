# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150328201732) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "counties", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "state"
  end

  create_table "future_usages", force: :cascade do |t|
    t.decimal  "total_population"
    t.decimal  "served_population"
    t.decimal  "commercial_ground_withdrawals"
    t.decimal  "commercial_surface_withdrawals"
    t.decimal  "commercial_public_withdrawals"
    t.decimal  "commercial_total_use"
    t.decimal  "commercial_reclaimed_use"
    t.decimal  "industrial_ground_withdrawals"
    t.decimal  "industrial_surface_withdrawals"
    t.decimal  "industrial_public_withdrawals"
    t.decimal  "industrial_total_use"
    t.decimal  "industrial_reclaimed_use"
    t.decimal  "domestic_ground_withdrawals"
    t.decimal  "domestic_surface_withdrawals"
    t.decimal  "domestic_public_withdrawals"
    t.decimal  "domestic_total_use"
    t.decimal  "domestic_per_capita_self_supplied"
    t.decimal  "domestic_per_capita_public_supplied"
    t.decimal  "fossil_ground_withdrawals"
    t.decimal  "fossil_surface_withdrawals"
    t.decimal  "fossil_public_withdrawals"
    t.decimal  "fossil_total_use"
    t.decimal  "fossil_reclaimed_use"
    t.decimal  "geothermal_ground_withdrawals"
    t.decimal  "geothermal_surface_withdrawals"
    t.decimal  "geothermal_public_withdrawals"
    t.decimal  "geothermal_total_use"
    t.decimal  "geothermal_reclaimed_use"
    t.decimal  "nuclear_ground_withdrawals"
    t.decimal  "nuclear_surface_withdrawals"
    t.decimal  "nuclear_public_withdrawals"
    t.decimal  "nuclear_total_use"
    t.decimal  "nuclear_reclaimed_use"
    t.decimal  "total_thermoelectric_ground_withdrawals"
    t.decimal  "total_thermoelectric_surface_withdrawals"
    t.decimal  "total_thermoelectric_public_withdrawals"
    t.decimal  "total_thermoelectric_total_use"
    t.decimal  "total_thermoelectric_reclaimed_use"
    t.decimal  "mining_ground_withdrawals"
    t.decimal  "mining_surface_withdrawals"
    t.decimal  "mining_public_withdrawals"
    t.decimal  "mining_total_use"
    t.decimal  "mining_reclaimed_use"
    t.decimal  "livestock_ground_withdrawals"
    t.decimal  "livestock_surface_withdrawals"
    t.decimal  "livestock_public_withdrawals"
    t.decimal  "livestock_total_use"
    t.decimal  "aquaculture_ground_withdrawals"
    t.decimal  "aquaculture_surface_withdrawals"
    t.decimal  "aquaculture_public_withdrawals"
    t.decimal  "aquaculture_total_use"
    t.decimal  "crop_ground_withdrawals"
    t.decimal  "crop_surface_withdrawals"
    t.decimal  "crop_public_withdrawals"
    t.decimal  "crop_total_use"
    t.decimal  "crop_reclaimed_use"
    t.decimal  "golf_ground_withdrawals"
    t.decimal  "golf_surface_withdrawals"
    t.decimal  "golf_public_withdrawals"
    t.decimal  "golf_total_use"
    t.decimal  "golf_reclaimed_use"
    t.decimal  "total_public_reclaimed"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "county_id"
    t.integer  "year"
  end

  create_table "historical_usages", force: :cascade do |t|
    t.decimal  "total_population"
    t.decimal  "served_population"
    t.decimal  "commercial_ground_withdrawals"
    t.decimal  "commercial_surface_withdrawals"
    t.decimal  "commercial_public_withdrawals"
    t.decimal  "commercial_total_use"
    t.decimal  "commercial_reclaimed_use"
    t.decimal  "industrial_ground_withdrawals"
    t.decimal  "industrial_surface_withdrawals"
    t.decimal  "industrial_public_withdrawals"
    t.decimal  "industrial_total_use"
    t.decimal  "industrial_reclaimed_use"
    t.decimal  "domestic_ground_withdrawals"
    t.decimal  "domestic_surface_withdrawals"
    t.decimal  "domestic_public_withdrawals"
    t.decimal  "domestic_total_use"
    t.decimal  "domestic_per_capita_self_supplied"
    t.decimal  "domestic_per_capita_public_supplied"
    t.decimal  "fossil_ground_withdrawals"
    t.decimal  "fossil_surface_withdrawals"
    t.decimal  "fossil_public_withdrawals"
    t.decimal  "fossil_total_use"
    t.decimal  "fossil_reclaimed_use"
    t.decimal  "geothermal_ground_withdrawals"
    t.decimal  "geothermal_surface_withdrawals"
    t.decimal  "geothermal_public_withdrawals"
    t.decimal  "geothermal_total_use"
    t.decimal  "geothermal_reclaimed_use"
    t.decimal  "nuclear_ground_withdrawals"
    t.decimal  "nuclear_surface_withdrawals"
    t.decimal  "nuclear_public_withdrawals"
    t.decimal  "nuclear_total_use"
    t.decimal  "nuclear_reclaimed_use"
    t.decimal  "total_thermoelectric_ground_withdrawals"
    t.decimal  "total_thermoelectric_surface_withdrawals"
    t.decimal  "total_thermoelectric_public_withdrawals"
    t.decimal  "total_thermoelectric_total_use"
    t.decimal  "total_thermoelectric_reclaimed_use"
    t.decimal  "mining_ground_withdrawals"
    t.decimal  "mining_surface_withdrawals"
    t.decimal  "mining_public_withdrawals"
    t.decimal  "mining_total_use"
    t.decimal  "mining_reclaimed_use"
    t.decimal  "livestock_ground_withdrawals"
    t.decimal  "livestock_surface_withdrawals"
    t.decimal  "livestock_public_withdrawals"
    t.decimal  "livestock_total_use"
    t.decimal  "aquaculture_ground_withdrawals"
    t.decimal  "aquaculture_surface_withdrawals"
    t.decimal  "aquaculture_public_withdrawals"
    t.decimal  "aquaculture_total_use"
    t.decimal  "crop_ground_withdrawals"
    t.decimal  "crop_surface_withdrawals"
    t.decimal  "crop_public_withdrawals"
    t.decimal  "crop_total_use"
    t.decimal  "crop_reclaimed_use"
    t.decimal  "golf_ground_withdrawals"
    t.decimal  "golf_surface_withdrawals"
    t.decimal  "golf_public_withdrawals"
    t.decimal  "golf_total_use"
    t.decimal  "golf_reclaimed_use"
    t.decimal  "total_public_reclaimed"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "county_id"
    t.integer  "year"
  end

  create_table "state_targets", force: :cascade do |t|
    t.string   "name"
    t.integer  "reduction"
    t.integer   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "target_usages", force: :cascade do |t|
    t.integer  "county_id"
    t.integer  "state_target_id"
    t.decimal  "total_consumption_target"
    t.decimal  "industrial_reduction"
    t.decimal  "domestic_reduction"
    t.decimal  "agriculture_reduction"
    t.decimal  "energy_reduction"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
