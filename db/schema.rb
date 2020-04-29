# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_29_170545) do

  create_table "carritos", force: :cascade do |t|
    t.text "nombre"
    t.float "precio"
    t.integer "cantidad"
    t.float "subtotal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_carritos_on_user_id"
  end

  create_table "categoria", force: :cascade do |t|
    t.text "nombre"
    t.integer "codigo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.float "precio"
    t.integer "stock"
    t.text "urlimagen"
    t.integer "categoria"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "categoria_id"
    t.index ["categoria_id"], name: "index_products_on_categoria_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "nombre"
    t.string "user"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "carritos", "users"
  add_foreign_key "products", "categoria", column: "categoria_id"
end
