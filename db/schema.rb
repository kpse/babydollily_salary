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

ActiveRecord::Schema.define(:version => 20120905145313) do

  create_table "adjustments", :force => true do |t|
    t.integer  "employee_id"
    t.decimal  "jan"
    t.decimal  "feb"
    t.decimal  "mar"
    t.decimal  "apr"
    t.decimal  "may"
    t.decimal  "jun"
    t.decimal  "jul"
    t.decimal  "aug"
    t.decimal  "sep"
    t.decimal  "oct"
    t.decimal  "nov"
    t.decimal  "dec"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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

  create_table "wages", :force => true do |t|
    t.integer  "employee_id"
    t.decimal  "basic"
    t.decimal  "post"
    t.decimal  "compensation"
    t.decimal  "seniority_allowance"
    t.decimal  "communication_allowance"
    t.decimal  "accommodation_allowance"
    t.decimal  "transportation_allowance"
    t.decimal  "monthly_wages_standard"
    t.decimal  "travel_allowance"
    t.decimal  "monthly_total"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end
