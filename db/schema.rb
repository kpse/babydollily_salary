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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120912162411) do

  create_table "adjustments", :force => true do |t|
    t.integer  "employee_id"
    t.decimal  "jan",         :default => 0.0
    t.decimal  "feb",         :default => 0.0
    t.decimal  "mar",         :default => 0.0
    t.decimal  "apr",         :default => 0.0
    t.decimal  "may",         :default => 0.0
    t.decimal  "jun",         :default => 0.0
    t.decimal  "jul",         :default => 0.0
    t.decimal  "aug",         :default => 0.0
    t.decimal  "sep",         :default => 0.0
    t.decimal  "oct",         :default => 0.0
    t.decimal  "nov",         :default => 0.0
    t.decimal  "dec",         :default => 0.0
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "adjustments", ["employee_id"], :name => "adjustments_employee_index"

  create_table "bonuses", :force => true do |t|
    t.integer  "employee_id"
    t.decimal  "project",     :default => 0.0
    t.decimal  "annual",      :default => 0.0
    t.datetime "granted_at"
    t.string   "sponsor",     :default => "none"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "bonuses", ["employee_id"], :name => "bonuses_employee_index"

  create_table "employee_data", :force => true do |t|
    t.string   "file"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "number"
    t.string   "name"
    t.string   "line_of_business"
    t.string   "dug"
    t.string   "du"
    t.string   "post"
    t.string   "duty"
    t.string   "charge_area"
    t.string   "client_rank"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "employees", ["number"], :name => "number_index"

  create_table "wages", :force => true do |t|
    t.integer  "employee_id"
    t.decimal  "basic",                    :default => 0.0
    t.decimal  "post",                     :default => 0.0
    t.decimal  "compensation",             :default => 0.0
    t.decimal  "seniority_allowance",      :default => 0.0
    t.decimal  "communication_allowance",  :default => 0.0
    t.decimal  "accommodation_allowance",  :default => 0.0
    t.decimal  "transportation_allowance", :default => 0.0
    t.decimal  "monthly_wages_standard",   :default => 0.0
    t.decimal  "travel_allowance",         :default => 0.0
    t.decimal  "monthly_total",            :default => 0.0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "wages", ["employee_id"], :name => "wages_employee_index"

end
