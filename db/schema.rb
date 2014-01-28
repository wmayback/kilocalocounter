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

ActiveRecord::Schema.define(version: 20140115004851) do

  create_table "days", force: true do |t|
    t.integer  "week_id"
    t.string   "name"
    t.integer  "meal1"
    t.integer  "meal2"
    t.integer  "meal3"
    t.integer  "meal4"
    t.integer  "meal5"
    t.integer  "meal6"
    t.integer  "meal7"
    t.integer  "meal8"
    t.integer  "meal9"
    t.integer  "meal10"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "static_data", force: true do |t|
    t.integer "idle_burn"
    t.integer "fasting_fuelage"
    t.integer "lean_fuelage"
  end

  create_table "weeks", force: true do |t|
    t.integer  "monday"
    t.integer  "tuesday"
    t.integer  "wednesday"
    t.integer  "thursday"
    t.integer  "friday"
    t.integer  "saturday"
    t.integer  "sunday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
