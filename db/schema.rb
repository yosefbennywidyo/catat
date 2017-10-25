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

ActiveRecord::Schema.define(version: 20171025073132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Pengguna_StatusKepegawaian", id: false, force: :cascade do |t|
    t.bigint "Pengguna_id", null: false
    t.bigint "StatusKepegawaian_id", null: false
  end

  create_table "daftar_pustaka", force: :cascade do |t|
    t.string "judul"
    t.text "keterangan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pengguna", force: :cascade do |t|
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status_kepegawaian"
  end

  create_table "pengguna_status_kepegawaian", id: false, force: :cascade do |t|
    t.bigint "status_kepegawaian_id", null: false
    t.bigint "pengguna_id", null: false
  end

  create_table "status_kepegawaian", force: :cascade do |t|
    t.string "status_kepegawaian"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surat_keluar", force: :cascade do |t|
    t.string "judul"
    t.text "keterangan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surat_masuk", force: :cascade do |t|
    t.string "nomor_surat"
    t.date "tanggal_surat"
    t.string "lampiran"
    t.date "diterima_tgl"
    t.string "no_agenda"
    t.string "status"
    t.string "sifat"
    t.string "dari"
    t.string "perihal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "derajat_pengaman"
  end

end
