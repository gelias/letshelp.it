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

ActiveRecord::Schema.define(:version => 20111203185328) do

  create_table "needs", :force => true do |t|
    t.string   "description"
    t.string   "title"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "organization_id"
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.string   "name_slug"
    t.string   "contact"
    t.string   "city"
    t.string   "city_slug"
    t.string   "country"
    t.text     "needs"
    t.string   "password"
    t.string   "email"
    t.string   "announcer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "organizations", ["id"], :name => "index_organizations_on_id"

  create_table "organizations_tags", :id => false, :force => true do |t|
    t.integer "organization_id"
    t.integer "tag_id"
  end

  create_table "slugs", :force => true do |t|
    t.string   "name"
    t.integer  "sluggable_id"
    t.integer  "sequence",                     :default => 1, :null => false
    t.string   "sluggable_type", :limit => 40
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "sequence", "scope"], :name => "index_slugs_on_n_s_s_and_s", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
