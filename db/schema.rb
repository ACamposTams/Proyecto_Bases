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

ActiveRecord::Schema.define(version: 20150427000036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: true do |t|
    t.string   "nombre",     null: false
    t.string   "direccion",  null: false
    t.integer  "telefono",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes_juegos", force: true do |t|
    t.integer  "juego_id",   null: false
    t.integer  "cliente_id", null: false
    t.integer  "total",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coleccionables", force: true do |t|
    t.string   "nombre"
    t.string   "marca"
    t.integer  "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "poster"
  end

  create_table "compradors", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre",                              null: false
    t.string   "direccion"
    t.integer  "telefono"
  end

  add_index "compradors", ["email"], name: "index_compradors_on_email", unique: true, using: :btree
  add_index "compradors", ["reset_password_token"], name: "index_compradors_on_reset_password_token", unique: true, using: :btree

  create_table "consolas", force: true do |t|
    t.string   "nombre",     null: false
    t.string   "marca",      null: false
    t.integer  "precio",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "poster"
  end

  create_table "juegos", force: true do |t|
    t.string   "titulo",     null: false
    t.string   "publisher",  null: false
    t.integer  "anio",       null: false
    t.integer  "precio",     null: false
    t.integer  "consola_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "consola",    null: false
    t.string   "poster"
  end

  add_index "juegos", ["consola_id"], name: "index_juegos_on_consola_id", using: :btree

  create_table "tiendas", force: true do |t|
    t.string   "direccion"
    t.integer  "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiendas_coleccionables", force: true do |t|
    t.integer  "coleccionable_id", null: false
    t.integer  "tienda_id",        null: false
    t.integer  "cantidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiendas_consolas", force: true do |t|
    t.integer  "consola_id", null: false
    t.integer  "tienda_id",  null: false
    t.integer  "cantidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiendas_juegos", force: true do |t|
    t.integer  "juego_id",   null: false
    t.integer  "tienda_id",  null: false
    t.integer  "cantidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "clientes_juegos", "clientes", name: "clientes_juegos_cliente_id_fk"
  add_foreign_key "clientes_juegos", "juegos", name: "clientes_juegos_juego_id_fk"

  add_foreign_key "juegos", "consolas", name: "juegos_consola_id_fk"

  add_foreign_key "tiendas_coleccionables", "coleccionables", name: "tiendas_coleccionables_coleccionable_id_fk"
  add_foreign_key "tiendas_coleccionables", "tiendas", name: "tiendas_coleccionables_tienda_id_fk"

  add_foreign_key "tiendas_consolas", "consolas", name: "tiendas_consolas_consola_id_fk"
  add_foreign_key "tiendas_consolas", "tiendas", name: "tiendas_consolas_tienda_id_fk"

  add_foreign_key "tiendas_juegos", "juegos", name: "tiendas_juegos_juego_id_fk"
  add_foreign_key "tiendas_juegos", "tiendas", name: "tiendas_juegos_tienda_id_fk"

end
