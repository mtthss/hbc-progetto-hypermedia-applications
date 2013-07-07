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

ActiveRecord::Schema.define(:version => 20130617123017) do

  create_table "Countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "admins", :force => true do |t|
    t.string   "name"
    t.string   "psw"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "counties", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customer_images", :force => true do |t|
    t.integer  "customer_id"
    t.string   "image_url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "designers", :force => true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "image_url"
    t.boolean  "top"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "designers_products", :id => false, :force => true do |t|
    t.integer "designer_id"
    t.integer "product_id"
  end

  add_index "designers_products", ["designer_id", "product_id"], :name => "index_designers_products_on_designer_id_and_product_id"

  create_table "event_images", :force => true do |t|
    t.integer  "event_id"
    t.string   "image_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.string   "location"
    t.text     "description"
    t.string   "image_url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "events_products", :id => false, :force => true do |t|
    t.integer "event_id"
    t.integer "product_id"
  end

  add_index "events_products", ["event_id", "product_id"], :name => "index_events_products_on_event_id_and_product_id"

  create_table "product_images", :force => true do |t|
    t.integer  "product_id"
    t.string   "image_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "product_types", :force => true do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.date     "on_market_on"
    t.integer  "product_type_id"
    t.boolean  "must_have"
    t.text     "description"
    t.string   "image_url"
    t.string   "tech_image_url"
    t.text     "datasheet"
    t.integer  "suggested_product_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "products_services", :id => false, :force => true do |t|
    t.integer "product_id"
    t.integer "service_id"
  end

  add_index "products_services", ["product_id", "service_id"], :name => "index_products_services_on_product_id_and_service_id"

  create_table "products_suggested_products", :id => false, :force => true do |t|
    t.integer "product_id"
    t.integer "suggested_product_id"
  end

  create_table "services", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "shop_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "shops", :force => true do |t|
    t.string   "name"
    t.string   "shop_type"
    t.string   "address"
    t.string   "tel"
    t.string   "email"
    t.string   "country"
    t.string   "county"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
