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

ActiveRecord::Schema.define(version: 20171122033936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daftar_pustaka", force: :cascade do |t|
    t.string "judul"
    t.text "keterangan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "lampiran"
    t.string "lampiran_file_name"
    t.string "lampiran_content_type"
    t.integer "lampiran_file_size"
    t.datetime "lampiran_updated_at"
  end

  create_table "derajat_pengaman", force: :cascade do |t|
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "derajat_pengaman_surat_masuk", id: false, force: :cascade do |t|
    t.bigint "derajat_pengaman_id", null: false
    t.bigint "surat_masuk_id", null: false
  end

  create_table "jabatan", force: :cascade do |t|
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jabatan_pengguna", id: false, force: :cascade do |t|
    t.bigint "jabatan_id", null: false
    t.bigint "pengguna_id", null: false
  end

  create_table "komentar", force: :cascade do |t|
    t.text "isi"
    t.integer "commentable_id"
    t.string "commentable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pengomentar"
    t.string "lampiran"
    t.string "lampiran_file_name"
    t.string "lampiran_content_type"
    t.integer "lampiran_file_size"
    t.datetime "lampiran_updated_at"
  end

  create_table "komentar_pengguna", id: false, force: :cascade do |t|
    t.bigint "pengguna_id", null: false
    t.bigint "komentar_id", null: false
  end

  create_table "pengguna", force: :cascade do |t|
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["nama"], name: "index_pengguna_on_nama", unique: true
    t.index ["reset_password_token"], name: "index_pengguna_on_reset_password_token", unique: true
  end

  create_table "pengguna_seksi", id: false, force: :cascade do |t|
    t.bigint "seksi_id", null: false
    t.bigint "pengguna_id", null: false
  end

  create_table "pengguna_status_akun", id: false, force: :cascade do |t|
    t.bigint "status_akun_id", null: false
    t.bigint "pengguna_id", null: false
  end

  create_table "pengguna_status_kepegawaian", id: false, force: :cascade do |t|
    t.bigint "status_kepegawaian_id", null: false
    t.bigint "pengguna_id", null: false
  end

  create_table "pengguna_surat_keluar", id: false, force: :cascade do |t|
    t.bigint "pengguna_id", null: false
    t.bigint "surat_keluar_id", null: false
  end

  create_table "seksi", force: :cascade do |t|
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seksi_surat_keluar", id: false, force: :cascade do |t|
    t.bigint "surat_keluar_id", null: false
    t.bigint "seksi_id", null: false
  end

  create_table "sifat_surat_masuk", force: :cascade do |t|
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sifat_surat_masuk_surat_masuk", id: false, force: :cascade do |t|
    t.bigint "sifat_surat_masuk_id", null: false
    t.bigint "surat_masuk_id", null: false
  end

  create_table "status_akun", force: :cascade do |t|
    t.string "keterangan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "status_kepegawaian", force: :cascade do |t|
    t.string "status_kepegawaian"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "status_surat_masuk", force: :cascade do |t|
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "status_surat_masuk_surat_masuk", id: false, force: :cascade do |t|
    t.bigint "status_surat_masuk_id", null: false
    t.bigint "surat_masuk_id", null: false
  end

  create_table "surat_keluar", force: :cascade do |t|
    t.string "judul"
    t.text "keterangan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status_surat"
    t.string "lampiran_dokumen"
    t.string "lampiran_dokumen_file_name"
    t.string "lampiran_dokumen_content_type"
    t.integer "lampiran_dokumen_file_size"
    t.datetime "lampiran_dokumen_updated_at"
  end

  create_table "surat_masuk", force: :cascade do |t|
    t.string "nomor_surat"
    t.date "tanggal_surat"
    t.string "lampiran"
    t.date "diterima_tgl"
    t.string "no_agenda"
    t.string "dari"
    t.string "perihal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
