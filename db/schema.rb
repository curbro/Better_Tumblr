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

ActiveRecord::Schema.define(:version => 20130630195142) do

  create_table "tumblelogs", :force => true do |t|
    t.string   "tumblelog"
    t.integer  "total_posts"
    t.integer  "total_text"
    t.integer  "total_quote"
    t.integer  "total_link"
    t.integer  "total_answer"
    t.integer  "total_video"
    t.integer  "total_audio"
    t.integer  "total_photo"
    t.integer  "total_chat"
    t.datetime "last_updated"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
