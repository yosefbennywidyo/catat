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

ActiveRecord::Schema.define(version: 20171123045642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "trackable_type"
    t.bigint "trackable_id"
    t.string "owner_type"
    t.bigint "owner_id"
    t.string "key"
    t.text "parameters"
    t.string "recipient_type"
    t.bigint "recipient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type"
    t.index ["owner_type", "owner_id"], name: "index_activities_on_owner_type_and_owner_id"
    t.index ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type"
    t.index ["recipient_type", "recipient_id"], name: "index_activities_on_recipient_type_and_recipient_id"
    t.index ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type"
    t.index ["trackable_type", "trackable_id"], name: "index_activities_on_trackable_type_and_trackable_id"
  end

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

  create_table "notifications", id: :serial, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "actor_id"
    t.string "notify_type", null: false
    t.string "target_type"
    t.integer "target_id"
    t.string "second_target_type"
    t.integer "second_target_id"
    t.string "third_target_type"
    t.integer "third_target_id"
    t.datetime "read_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "notify_type"], name: "index_notifications_on_user_id_and_notify_type"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "pengguna", force: :cascade do |t|
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
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
