# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do |i|
  SuratMasuk.create!([{
  nomor_surat: "nomor.surat/#{i}",
  tanggal_surat: '01/01/2017',
  lampiran: "-",
  diterima_tgl: '01/01/2017',
  no_agenda: "-",
  dari: "Orang ke#{i}",
  perihal: "perihal#{i}"
  }])
end

p "Created #{SuratMasuk.count} surat masuk"


StatusSuratMasuk.create!([{
  nama: "Asli"
  }])
StatusSuratMasuk.create!([{
  nama: "Tembusan"
  }])

p "Created #{StatusSuratMasuk.count} status surat masuk"



SifatSuratMasuk.create!([{
  nama: "Sangat Segera/Kilat"
  }])
SifatSuratMasuk.create!([{
  nama: "Segera"
  }])
SifatSuratMasuk.create!([{
  nama: "Biasa"
  }])

p "Created #{SifatSuratMasuk.count} sifat surat masuk"


# Assigned SuratMasuk 1-10 with StatusSuratMasuk.nama = Asli
SuratMasuk.find(1).status_surat_masuk << StatusSuratMasuk.find(1)
SuratMasuk.find(2).status_surat_masuk << StatusSuratMasuk.find(1)
SuratMasuk.find(3).status_surat_masuk << StatusSuratMasuk.find(1)
SuratMasuk.find(4).status_surat_masuk << StatusSuratMasuk.find(1)
SuratMasuk.find(5).status_surat_masuk << StatusSuratMasuk.find(1)
SuratMasuk.find(6).status_surat_masuk << StatusSuratMasuk.find(1)
SuratMasuk.find(7).status_surat_masuk << StatusSuratMasuk.find(1)
SuratMasuk.find(8).status_surat_masuk << StatusSuratMasuk.find(1)
SuratMasuk.find(9).status_surat_masuk << StatusSuratMasuk.find(1)
SuratMasuk.find(10).status_surat_masuk << StatusSuratMasuk.find(1)

# Assigned SuratMasuk 11-20 with StatusSuratMasuk.nama = Tembusan
SuratMasuk.find(11).status_surat_masuk << StatusSuratMasuk.find(2)
SuratMasuk.find(12).status_surat_masuk << StatusSuratMasuk.find(2)
SuratMasuk.find(13).status_surat_masuk << StatusSuratMasuk.find(2)
SuratMasuk.find(14).status_surat_masuk << StatusSuratMasuk.find(2)
SuratMasuk.find(15).status_surat_masuk << StatusSuratMasuk.find(2)
SuratMasuk.find(16).status_surat_masuk << StatusSuratMasuk.find(2)
SuratMasuk.find(17).status_surat_masuk << StatusSuratMasuk.find(2)
SuratMasuk.find(18).status_surat_masuk << StatusSuratMasuk.find(2)
SuratMasuk.find(19).status_surat_masuk << StatusSuratMasuk.find(2)
SuratMasuk.find(20).status_surat_masuk << StatusSuratMasuk.find(2)

# Assigned SuratMasuk 1-6 with SifatSuratMasuk.nama = Sangat Segera/Kilat
SuratMasuk.find(1).sifat_surat_masuk << SifatSuratMasuk.find(1)
SuratMasuk.find(2).sifat_surat_masuk << SifatSuratMasuk.find(1)
SuratMasuk.find(3).sifat_surat_masuk << SifatSuratMasuk.find(1)
SuratMasuk.find(4).sifat_surat_masuk << SifatSuratMasuk.find(1)
SuratMasuk.find(5).sifat_surat_masuk << SifatSuratMasuk.find(1)
SuratMasuk.find(6).sifat_surat_masuk << SifatSuratMasuk.find(1)

# Assigned SuratMasuk 7-12 with SifatSuratMasuk.nama = Segera
SuratMasuk.find(7).sifat_surat_masuk << SifatSuratMasuk.find(2)
SuratMasuk.find(8).sifat_surat_masuk << SifatSuratMasuk.find(2)
SuratMasuk.find(9).sifat_surat_masuk << SifatSuratMasuk.find(2)
SuratMasuk.find(10).sifat_surat_masuk << SifatSuratMasuk.find(2)
SuratMasuk.find(11).sifat_surat_masuk << SifatSuratMasuk.find(2)
SuratMasuk.find(12).sifat_surat_masuk << SifatSuratMasuk.find(2)

# Assigned SuratMasuk 13-20 with SifatSuratMasuk.nama = Biasa
SuratMasuk.find(13).sifat_surat_masuk << SifatSuratMasuk.find(3)
SuratMasuk.find(14).sifat_surat_masuk << SifatSuratMasuk.find(3)
SuratMasuk.find(15).sifat_surat_masuk << SifatSuratMasuk.find(3)
SuratMasuk.find(16).sifat_surat_masuk << SifatSuratMasuk.find(3)
SuratMasuk.find(17).sifat_surat_masuk << SifatSuratMasuk.find(3)
SuratMasuk.find(18).sifat_surat_masuk << SifatSuratMasuk.find(3)
SuratMasuk.find(19).sifat_surat_masuk << SifatSuratMasuk.find(3)
SuratMasuk.find(20).sifat_surat_masuk << SifatSuratMasuk.find(3)

20.times do |i|
  SuratKeluar.create!([{
  judul: "Surat keluar ke-#{i}",
  keterangan: "Keterangan surat keluar ke-#{i}"
  }])
end

p "Created #{SuratKeluar.count} surat keluar"



20.times do |i|
  DaftarPustaka.create!([{
  judul: "Pustaka ke-#{i}",
  keterangan: "Keterangan pustaka ke-#{i}"
  }])
end

p "Created #{DaftarPustaka.count} pustaka"


Pengguna.create!([{
  nama: "Bulla Nggallu, S.Pd, M.Si",
  password: "password",
  password_confirmation: "password"
  }])
  
Pengguna.create!([{
  nama: "Yosef Rangga Kapodo, S.S",
  password: "password",
  password_confirmation: "password"
  }])

Pengguna.create!([{
  nama: "Administrator",
  password: "Administrator",
  password_confirmation: "Administrator"
  }])

Pengguna.create!([{
  nama: "Umbu Tagela Ibi Sola, S.Ab",
  password: "password",
  password_confirmation: "password"
  }])

p "Created #{Pengguna.count} pengguna"



StatusKepegawaian.create!([{
  status_kepegawaian: "PNS"
}])
StatusKepegawaian.create!([{
  status_kepegawaian: "PTT"
}])

p "Created #{StatusKepegawaian.count} status kepegawaian"



Jabatan.create!([{
  nama: "Kepala Kantor"
}])
Jabatan.create!([{
  nama: "PLT Kepala Kantor"
}])
Jabatan.create!([{
  nama: "Kepala Sub Bagian"
}])
Jabatan.create!([{
  nama: "Kepala Seksi"
}])
Jabatan.create!([{
  nama: "Penyelenggara"
}])
Jabatan.create!([{
  nama: "Pelaksana"
}])

p "Created #{Jabatan.count} nama jabatan"



Seksi.create!([{
  nama: "Tata Usaha"
}])
Seksi.create!([{
  nama: "Urusan Agama Katolik"
}])
Seksi.create!([{
  nama: "Urusan Agama Kristen"
}])
Seksi.create!([{
  nama: "Pendidikan Agama Katolik"
}])
Seksi.create!([{
  nama: "Pendidikan Agama Kristen"
}])
Seksi.create!([{
  nama: "Pendidikan dan Bimbingan Masyarakat Islam"
}])
Seksi.create!([{
  nama: "Haji dan Umrah"
}])

p "Created #{Seksi.count} nama seksi"



StatusAkun.create!([{
  keterangan: "Tidak aktif"
}])
StatusAkun.create!([{
  keterangan: "Aktif"
}])
StatusAkun.create!([{
  keterangan: "Administrator"
}])

p "Created #{StatusAkun.count} status akun"

Pengguna.find(1).status_akun << StatusAkun.find(2)
Pengguna.find(2).status_akun << StatusAkun.find(2)
Pengguna.find(3).status_akun << StatusAkun.find(2)
Pengguna.find(4).status_akun << StatusAkun.find(3)

Pengguna.find(2).seksi << Seksi.find(1)
Pengguna.find(4).seksi << Seksi.find(1)

Pengguna.find(1).jabatan << Jabatan.find(1)
Pengguna.find(2).jabatan << Jabatan.find(3)
Pengguna.find(4).jabatan << Jabatan.find(6)

Pengguna.find(1).status_kepegawaian << StatusKepegawaian.find(1)
Pengguna.find(2).status_kepegawaian << StatusKepegawaian.find(1)
Pengguna.find(4).status_kepegawaian << StatusKepegawaian.find(2)

p "Created #{Pengguna.count} pengguna"