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

ActiveRecord::Schema.define(version: 20150720203237) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "email",      limit: 255
    t.string   "senha",      limit: 255
    t.string   "tel1",       limit: 255
    t.string   "tel2",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "enderecos", force: :cascade do |t|
    t.integer  "cliente_id",      limit: 4
    t.text     "logradouro",      limit: 65535
    t.string   "bairro",          limit: 255
    t.string   "cidade",          limit: 255
    t.string   "pontoreferencia", limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "enderecos", ["cliente_id"], name: "index_enderecos_on_cliente_id", using: :btree

  create_table "pizzas", force: :cascade do |t|
    t.string   "nome",         limit: 255
    t.string   "foto",         limit: 255
    t.text     "ingredientes", limit: 65535
    t.float    "precop",       limit: 24
    t.float    "precom",       limit: 24
    t.float    "precog",       limit: 24
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.string   "senha",      limit: 255
    t.string   "apelido",    limit: 255
    t.string   "tipo",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "enderecos", "clientes"
end
