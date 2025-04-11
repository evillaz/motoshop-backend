# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_04_11_195055) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "nombre"
    t.string "primerApellido"
    t.string "segundoApellido"
    t.string "dni"
    t.string "direccion"
    t.string "departamento"
    t.string "provincia"
    t.string "distrito"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "sale_id"
    t.index ["sale_id"], name: "index_customers_on_sale_id"
  end

  create_table "motorcycles", force: :cascade do |t|
    t.string "factura"
    t.string "modelo"
    t.string "marca"
    t.string "color"
    t.string "numero_de_chasis"
    t.string "numero_de_motor"
    t.string "dua"
    t.integer "anio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "sale_id"
    t.index ["sale_id"], name: "index_motorcycles_on_sale_id"
  end

  create_table "payments", force: :cascade do |t|
    t.decimal "amount", precision: 10, scale: 2
    t.string "method"
    t.bigint "sale_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sale_id"], name: "index_payments_on_sale_id"
  end

  create_table "sales", force: :cascade do |t|
    t.string "factura", null: false
    t.string "dni"
    t.decimal "total_amount", precision: 10, scale: 2
    t.string "boleta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dni"], name: "index_sales_on_dni"
    t.index ["factura"], name: "index_sales_on_factura"
  end

  add_foreign_key "customers", "sales"
  add_foreign_key "motorcycles", "sales"
  add_foreign_key "payments", "sales"
end
