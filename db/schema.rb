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

ActiveRecord::Schema[7.0].define(version: 2023_04_17_171150) do
  create_table "alunos", force: :cascade do |t|
    t.string "aluno_name"
    t.string "email"
    t.string "matricula"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cargo_id"
    t.index ["cargo_id"], name: "index_alunos_on_cargo_id"
  end

  create_table "cargos", force: :cascade do |t|
    t.string "funcao"
    t.string "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "progile_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "matricula", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profile_name"
    t.index ["email"], name: "index_profiles_on_email", unique: true
    t.index ["matricula"], name: "index_profiles_on_matricula", unique: true
    t.index ["profile_name"], name: "index_profiles_on_profile_name"
    t.index ["reset_password_token"], name: "index_profiles_on_reset_password_token", unique: true
  end

  add_foreign_key "alunos", "cargos"
end
