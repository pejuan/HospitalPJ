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

ActiveRecord::Schema.define(version: 20150920151135) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "bills", force: :cascade do |t|
    t.integer  "patient_id"
    t.date     "billDate"
    t.float    "hospitalizationCost"
    t.float    "hemogramCost"
    t.float    "doctorsPayment"
    t.float    "biochemistryCost"
    t.integer  "visit_id"
    t.integer  "hospitalization_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "bills", ["hospitalization_id"], name: "index_bills_on_hospitalization_id"
  add_index "bills", ["patient_id"], name: "index_bills_on_patient_id"
  add_index "bills", ["visit_id"], name: "index_bills_on_visit_id"

  create_table "blood_chemistry_tests", force: :cascade do |t|
    t.float    "glucose"
    t.float    "urea"
    t.float    "uric_acid"
    t.float    "creatinine"
    t.float    "cholesterol"
    t.float    "hdl"
    t.float    "ldl"
    t.float    "triglycerides"
    t.float    "got"
    t.float    "gpt"
    t.float    "ggt"
    t.float    "alkaline_phosphatase"
    t.float    "calcium"
    t.float    "iron"
    t.float    "potassium"
    t.float    "sodium"
    t.float    "bilirubin"
    t.date     "test_date"
    t.integer  "patient_id"
    t.integer  "microbiologist_id"
    t.float    "examination_cost"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "blood_chemistry_tests", ["microbiologist_id"], name: "index_blood_chemistry_tests_on_microbiologist_id"
  add_index "blood_chemistry_tests", ["patient_id"], name: "index_blood_chemistry_tests_on_patient_id"

  create_table "blood_tests", force: :cascade do |t|
    t.date     "test_date"
    t.float    "erythrocytes"
    t.float    "hemoglobin"
    t.float    "vcm"
    t.float    "hcm"
    t.float    "lymphocytes"
    t.float    "leukocytes"
    t.float    "neutrophils"
    t.float    "eosinofilos"
    t.float    "platelets"
    t.float    "vsg"
    t.integer  "patient_id"
    t.float    "microbiologist"
    t.float    "examination_cost"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "blood_tests", ["patient_id"], name: "index_blood_tests_on_patient_id"

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.date     "birthdate"
    t.string   "specialty"
    t.string   "undergraduateUniversity"
    t.string   "specialtyUniversity"
    t.float    "cost"
    t.integer  "admin_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "email"
    t.string   "id_number"
  end

  add_index "doctors", ["admin_id"], name: "index_doctors_on_admin_id"

  create_table "hospitalizations", force: :cascade do |t|
    t.integer  "daysSpent"
    t.string   "roomNumber"
    t.date     "entryDate"
    t.integer  "doctor_id"
    t.float    "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "hospitalizations", ["doctor_id"], name: "index_hospitalizations_on_doctor_id"

  create_table "illness_details", force: :cascade do |t|
    t.string   "mainSymptom"
    t.date     "dateSymptomAppeared"
    t.string   "calmsPain"
    t.string   "intensifiesPain"
    t.time     "peakHour"
    t.integer  "patient_id"
    t.integer  "hospitalization_id"
    t.integer  "visit_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "illness_details", ["hospitalization_id"], name: "index_illness_details_on_hospitalization_id"
  add_index "illness_details", ["patient_id"], name: "index_illness_details_on_patient_id"
  add_index "illness_details", ["visit_id"], name: "index_illness_details_on_visit_id"

  create_table "labs", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "labs", ["email"], name: "index_labs_on_email", unique: true
  add_index "labs", ["reset_password_token"], name: "index_labs_on_reset_password_token", unique: true

  create_table "microbiologists", force: :cascade do |t|
    t.string   "id_number"
    t.string   "name"
    t.string   "lastname"
    t.date     "birthdate"
    t.string   "undergraduateUniversity"
    t.string   "postGraduateUniversity"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "lab_id"
    t.string   "email"
  end

  add_index "microbiologists", ["lab_id"], name: "index_microbiologists_on_lab_id"

  create_table "nurses", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.date     "birthdate"
    t.string   "undergraduateUniversity"
    t.float    "payPerHour"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "id_number"
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.date     "registryDate"
    t.text     "address"
    t.string   "bloodType"
    t.string   "sex"
    t.string   "maritalStatus"
    t.date     "birthdate"
    t.string   "phoneNumber"
    t.string   "cellphone"
    t.string   "email"
    t.string   "emergencyContact"
    t.string   "occupation"
    t.text     "allergies"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "id_number"
  end

  add_index "patients", ["user_id"], name: "index_patients_on_user_id"

  create_table "secretaries", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "secretaries", ["email"], name: "index_secretaries_on_email", unique: true
  add_index "secretaries", ["reset_password_token"], name: "index_secretaries_on_reset_password_token", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "visits", force: :cascade do |t|
    t.date     "visitDate"
    t.boolean  "Hospitalized"
    t.integer  "doctor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "visits", ["doctor_id"], name: "index_visits_on_doctor_id"

end
