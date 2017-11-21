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



DerajatPengaman.create!([{
  nama: "Sangat Rahasia"
  }])
DerajatPengaman.create!([{
  nama: "Rahasia"
  }])
DerajatPengaman.create!([{
  nama: "Biasa"
  }])

p "Created #{DerajatPengaman.count} derajat pengaman"



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



# Assigned SuratMasuk 1-6 with DerajatPengaman.nama = Sangat Rahasia
SuratMasuk.find(1).derajat_pengaman << DerajatPengaman.find(1)
SuratMasuk.find(2).derajat_pengaman << DerajatPengaman.find(1)
SuratMasuk.find(3).derajat_pengaman << DerajatPengaman.find(1)
SuratMasuk.find(4).derajat_pengaman << DerajatPengaman.find(1)
SuratMasuk.find(5).derajat_pengaman << DerajatPengaman.find(1)
SuratMasuk.find(6).derajat_pengaman << DerajatPengaman.find(1)

# Assigned SuratMasuk 7-12 with DerajatPengaman.nama = Rahasia
SuratMasuk.find(7).derajat_pengaman << DerajatPengaman.find(2)
SuratMasuk.find(8).derajat_pengaman << DerajatPengaman.find(2)
SuratMasuk.find(9).derajat_pengaman << DerajatPengaman.find(2)
SuratMasuk.find(10).derajat_pengaman << DerajatPengaman.find(2)
SuratMasuk.find(11).derajat_pengaman << DerajatPengaman.find(2)
SuratMasuk.find(12).derajat_pengaman << DerajatPengaman.find(2)

# Assigned SuratMasuk 13-20 with DerajatPengaman.nama = Biasa
SuratMasuk.find(13).derajat_pengaman << DerajatPengaman.find(3)
SuratMasuk.find(14).derajat_pengaman << DerajatPengaman.find(3)
SuratMasuk.find(15).derajat_pengaman << DerajatPengaman.find(3)
SuratMasuk.find(16).derajat_pengaman << DerajatPengaman.find(3)
SuratMasuk.find(17).derajat_pengaman << DerajatPengaman.find(3)
SuratMasuk.find(18).derajat_pengaman << DerajatPengaman.find(3)
SuratMasuk.find(19).derajat_pengaman << DerajatPengaman.find(3)
SuratMasuk.find(20).derajat_pengaman << DerajatPengaman.find(3)


90.times do |i|
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

daftar_pejabat = Array.new
daftar_pejabat = ["Bulla Nggallu, S.Pd, M.Si", "Yosef Rangga Kapodo, S.S",
  "Yohan Nani Marthen, S.Pd", "Bp. Demsi", "Francy R.S. Da Lopez, SH", "Stanis Laus Wadan, S.Ag",
  "Drs. H. Pua Monto Umbu Nay", "Maskur Kadir, S.Sos.I", "Ahmad Hamdi Mulyo, S.Hi"]

9.times do |i|
  Pengguna.create!([{
    nama: "#{daftar_pejabat[i]}",
    password: "password",
    password_confirmation: "password"
  }])
end

daftar_pelaksana = Array.new
daftar_pelaksana = ["Umbu Tagela Ibi Sola, S.Ab", "Frien T.P. Wuakaranu, S.Kom",
  "Yonathan U.J. Anakoda, S.Ab", "Petrus P. Pateduk", "Hendrikus Nahak, SH", "Azabur Abdullah, S.Sy",
  "Umairah R.G.B. Algadrie", "M. Alwi Algadrie", "Mansur Bin Awal", "Administrator"]
  
10.times do |i|
  Pengguna.create!([{
    nama: "#{daftar_pelaksana[i]}",
    password: "password",
    password_confirmation: "password"
  }])
end
  
p "Created #{Pengguna.count} pengguna"



StatusKepegawaian.create!([{
  status_kepegawaian: "PNS"
}])
StatusKepegawaian.create!([{
  status_kepegawaian: "PTT"
}])

p "Created #{StatusKepegawaian.count} status kepegawaian"


# Assigned Pengguna 1-2 with StatusKepegawaian.status_kepegawaian = PNS
Pengguna.find(1).status_kepegawaian << StatusKepegawaian.find(1)
Pengguna.find(2).status_kepegawaian << StatusKepegawaian.find(1)
Pengguna.find(3).status_kepegawaian << StatusKepegawaian.find(1)
Pengguna.find(4).status_kepegawaian << StatusKepegawaian.find(1)
Pengguna.find(5).status_kepegawaian << StatusKepegawaian.find(1)
Pengguna.find(6).status_kepegawaian << StatusKepegawaian.find(1)
Pengguna.find(7).status_kepegawaian << StatusKepegawaian.find(1)
Pengguna.find(8).status_kepegawaian << StatusKepegawaian.find(1)
Pengguna.find(9).status_kepegawaian << StatusKepegawaian.find(1)
Pengguna.find(14).status_kepegawaian << StatusKepegawaian.find(1)

# Assigned Pengguna 4 with StatusKepegawaian.status_kepegawaian = PTT
Pengguna.find(10).status_kepegawaian << StatusKepegawaian.find(2)
Pengguna.find(11).status_kepegawaian << StatusKepegawaian.find(2)
Pengguna.find(12).status_kepegawaian << StatusKepegawaian.find(2)
Pengguna.find(13).status_kepegawaian << StatusKepegawaian.find(2)
Pengguna.find(15).status_kepegawaian << StatusKepegawaian.find(2)
Pengguna.find(16).status_kepegawaian << StatusKepegawaian.find(2)
Pengguna.find(17).status_kepegawaian << StatusKepegawaian.find(2)
Pengguna.find(18).status_kepegawaian << StatusKepegawaian.find(2)


# Jabatan ke-1
Jabatan.create!([{
  nama: "Kepala Kantor"
}])
# Jabatan ke-2
Jabatan.create!([{
  nama: "PLT Kepala Kantor"
}])
# Jabatan ke-3
Jabatan.create!([{
  nama: "Kepala Sub Bagian"
}])
# Jabatan ke-4
Jabatan.create!([{
  nama: "Kepala Seksi"
}])
# Jabatan ke-5
Jabatan.create!([{
  nama: "Penyelenggara"
}])
# Jabatan ke-6
Jabatan.create!([{
  nama: "Kepala"
}])
# Jabatan ke-7
Jabatan.create!([{
  nama: "Pelaksana"
}])

p "Created #{Jabatan.count} nama jabatan"



# Assigned Pengguna 1 with Jabatan.nama = Kepala Kantor
Pengguna.find(1).jabatan << Jabatan.find(1)
# Assigned Pengguna 2 with Jabatan.nama = Kepala Sub Bagian
Pengguna.find(2).jabatan << Jabatan.find(3)
# Assigned Pengguna 3, 4, 6, and 7 with Jabatan.nama = Kepala Seksi
Pengguna.find(3).jabatan << Jabatan.find(4)
Pengguna.find(4).jabatan << Jabatan.find(4)
Pengguna.find(6).jabatan << Jabatan.find(4)
Pengguna.find(7).jabatan << Jabatan.find(4)
# Assigned Pengguna 5 and 8 with Jabatan.nama = Penyelenggara
Pengguna.find(5).jabatan << Jabatan.find(5)
Pengguna.find(8).jabatan << Jabatan.find(5)
# Assigned Pengguna 9 with Jabatan.nama = Kepala KUA
Pengguna.find(9).jabatan << Jabatan.find(6)

# Assigned Pengguna 10-18 with Jabatan.nama = Pelaksana
Pengguna.find(10).jabatan << Jabatan.find(7)
Pengguna.find(11).jabatan << Jabatan.find(7)
Pengguna.find(12).jabatan << Jabatan.find(7)
Pengguna.find(13).jabatan << Jabatan.find(7)
Pengguna.find(14).jabatan << Jabatan.find(7)
Pengguna.find(15).jabatan << Jabatan.find(7)
Pengguna.find(16).jabatan << Jabatan.find(7)
Pengguna.find(17).jabatan << Jabatan.find(7)
Pengguna.find(18).jabatan << Jabatan.find(7)


# Seksi ke-1
Seksi.create!([{
  nama: "Tata Usaha"
}])
# Seksi ke-2
Seksi.create!([{
  nama: "Urusan Agama Katolik"
}])
# Seksi ke-3
Seksi.create!([{
  nama: "Urusan Agama Kristen"
}])
# Seksi ke-4
Seksi.create!([{
  nama: "Pendidikan Agama Katolik"
}])
# Seksi ke-5
Seksi.create!([{
  nama: "Pendidikan Agama Kristen"
}])
# Seksi ke-6
Seksi.create!([{
  nama: "Pendidikan Agama Islam"
}])
# Seksi ke-7
Seksi.create!([{
  nama: "Urusan Agama Islam"
}])
# Seksi ke-8
Seksi.create!([{
  nama: "Haji dan Umrah"
}])
# Seksi ke-9
Seksi.create!([{
  nama: "KUA Kecamatan Katikutana"
}])

p "Created #{Seksi.count} nama seksi"

# 1st Pengguna do not assigned with seksi because have 9 seksi
# Assigned Pengguna 2 and 10 with Seksi.nama = Tata Usaha
Pengguna.find(10).seksi << Seksi.find(1)
Pengguna.find(2).seksi << Seksi.find(1)
# Assigned Pengguna 3 and 11 with Seksi.nama = Pendidikan Agama Kristen
Pengguna.find(3).seksi << Seksi.find(5)
Pengguna.find(11).seksi << Seksi.find(5)
# Assigned Pengguna 4 and 12 with Seksi.nama = Urusan Agama Kristen
Pengguna.find(4).seksi << Seksi.find(3)
Pengguna.find(12).seksi << Seksi.find(3)
# Assigned Pengguna 5 and 13 with Seksi.nama = Pendidikan Agama Katolik
Pengguna.find(5).seksi << Seksi.find(4)
Pengguna.find(13).seksi << Seksi.find(4)
# Assigned Pengguna 6 and 14 with Seksi.nama = Urusan Agama Katolik
Pengguna.find(6).seksi << Seksi.find(2)
Pengguna.find(14).seksi << Seksi.find(2)
# Assigned Pengguna 15 with Seksi.nama = Pendidikan Agama Islam
# For 7th Pengguna (Monto U. Nay) doesn't assigned with Seksi because have 2 seksi (Pendidikan dan Urusan Agama Islam)
Pengguna.find(15).seksi << Seksi.find(6)
# Assigned Pengguna 16 with Seksi.nama = Urusan Agama Islam
Pengguna.find(16).seksi << Seksi.find(7)
# Assigned Pengguna 8 and 16 with Seksi.nama = Haji dan Umrah
Pengguna.find(8).seksi << Seksi.find(8)
Pengguna.find(16).seksi << Seksi.find(8)
# Assigned Pengguna 9 and 17 with Seksi.nama = Kecamatan Katikutana
Pengguna.find(9).seksi << Seksi.find(9)
Pengguna.find(17).seksi << Seksi.find(9)



# Assigned SuratKeluar 1-10 with Pengguna ke-10
SuratKeluar.find(1).pengguna << Pengguna.find(10)
SuratKeluar.find(2).pengguna << Pengguna.find(10)
SuratKeluar.find(3).pengguna << Pengguna.find(10)
SuratKeluar.find(4).pengguna << Pengguna.find(10)
SuratKeluar.find(5).pengguna << Pengguna.find(10)
SuratKeluar.find(6).pengguna << Pengguna.find(10)
SuratKeluar.find(7).pengguna << Pengguna.find(10)
SuratKeluar.find(8).pengguna << Pengguna.find(10)
SuratKeluar.find(9).pengguna << Pengguna.find(10)
SuratKeluar.find(10).pengguna << Pengguna.find(10)
# Assigned SuratKeluar 1-10 with Seksi ke-1
SuratKeluar.find(1).seksi << Seksi.find(1)
SuratKeluar.find(2).seksi << Seksi.find(1)
SuratKeluar.find(3).seksi << Seksi.find(1)
SuratKeluar.find(4).seksi << Seksi.find(1)
SuratKeluar.find(5).seksi << Seksi.find(1)
SuratKeluar.find(6).seksi << Seksi.find(1)
SuratKeluar.find(7).seksi << Seksi.find(1)
SuratKeluar.find(8).seksi << Seksi.find(1)
SuratKeluar.find(9).seksi << Seksi.find(1)
SuratKeluar.find(10).seksi << Seksi.find(1)



# Assigned SuratKeluar 11-20 with Pengguna ke-11
SuratKeluar.find(11).pengguna << Pengguna.find(11)
SuratKeluar.find(12).pengguna << Pengguna.find(11)
SuratKeluar.find(13).pengguna << Pengguna.find(11)
SuratKeluar.find(14).pengguna << Pengguna.find(11)
SuratKeluar.find(15).pengguna << Pengguna.find(11)
SuratKeluar.find(16).pengguna << Pengguna.find(11)
SuratKeluar.find(17).pengguna << Pengguna.find(11)
SuratKeluar.find(18).pengguna << Pengguna.find(11)
SuratKeluar.find(19).pengguna << Pengguna.find(11)
SuratKeluar.find(20).pengguna << Pengguna.find(11)

# Assigned SuratKeluar 11-20 with Seksi ke-2
SuratKeluar.find(11).seksi << Seksi.find(2)
SuratKeluar.find(12).seksi << Seksi.find(2)
SuratKeluar.find(13).seksi << Seksi.find(2)
SuratKeluar.find(14).seksi << Seksi.find(2)
SuratKeluar.find(15).seksi << Seksi.find(2)
SuratKeluar.find(16).seksi << Seksi.find(2)
SuratKeluar.find(17).seksi << Seksi.find(2)
SuratKeluar.find(18).seksi << Seksi.find(2)
SuratKeluar.find(19).seksi << Seksi.find(2)
SuratKeluar.find(20).seksi << Seksi.find(2)



# Assigned SuratKeluar 21-30 with Pengguna ke-12
SuratKeluar.find(21).pengguna << Pengguna.find(12)
SuratKeluar.find(22).pengguna << Pengguna.find(12)
SuratKeluar.find(23).pengguna << Pengguna.find(12)
SuratKeluar.find(24).pengguna << Pengguna.find(12)
SuratKeluar.find(25).pengguna << Pengguna.find(12)
SuratKeluar.find(26).pengguna << Pengguna.find(12)
SuratKeluar.find(27).pengguna << Pengguna.find(12)
SuratKeluar.find(28).pengguna << Pengguna.find(12)
SuratKeluar.find(29).pengguna << Pengguna.find(12)
SuratKeluar.find(30).pengguna << Pengguna.find(12)

# Assigned SuratKeluar 21-30 with Seksi ke-1
SuratKeluar.find(21).seksi << Seksi.find(3)
SuratKeluar.find(22).seksi << Seksi.find(3)
SuratKeluar.find(23).seksi << Seksi.find(3)
SuratKeluar.find(24).seksi << Seksi.find(3)
SuratKeluar.find(25).seksi << Seksi.find(3)
SuratKeluar.find(26).seksi << Seksi.find(3)
SuratKeluar.find(27).seksi << Seksi.find(3)
SuratKeluar.find(28).seksi << Seksi.find(3)
SuratKeluar.find(29).seksi << Seksi.find(3)
SuratKeluar.find(30).seksi << Seksi.find(3)



# Assigned SuratKeluar 31-40 with Pengguna ke-13
SuratKeluar.find(31).pengguna << Pengguna.find(13)
SuratKeluar.find(32).pengguna << Pengguna.find(13)
SuratKeluar.find(33).pengguna << Pengguna.find(13)
SuratKeluar.find(34).pengguna << Pengguna.find(13)
SuratKeluar.find(35).pengguna << Pengguna.find(13)
SuratKeluar.find(36).pengguna << Pengguna.find(13)
SuratKeluar.find(37).pengguna << Pengguna.find(13)
SuratKeluar.find(38).pengguna << Pengguna.find(13)
SuratKeluar.find(39).pengguna << Pengguna.find(13)
SuratKeluar.find(40).pengguna << Pengguna.find(13)

# Assigned SuratKeluar 31-40 with Seksi ke-4
SuratKeluar.find(31).seksi << Seksi.find(4)
SuratKeluar.find(32).seksi << Seksi.find(4)
SuratKeluar.find(33).seksi << Seksi.find(4)
SuratKeluar.find(34).seksi << Seksi.find(4)
SuratKeluar.find(35).seksi << Seksi.find(4)
SuratKeluar.find(36).seksi << Seksi.find(4)
SuratKeluar.find(37).seksi << Seksi.find(4)
SuratKeluar.find(38).seksi << Seksi.find(4)
SuratKeluar.find(39).seksi << Seksi.find(4)
SuratKeluar.find(40).seksi << Seksi.find(4)



# Assigned SuratKeluar 41-50 with Pengguna ke-14
SuratKeluar.find(41).pengguna << Pengguna.find(1)
SuratKeluar.find(42).pengguna << Pengguna.find(14)
SuratKeluar.find(43).pengguna << Pengguna.find(14)
SuratKeluar.find(44).pengguna << Pengguna.find(14)
SuratKeluar.find(45).pengguna << Pengguna.find(14)
SuratKeluar.find(46).pengguna << Pengguna.find(14)
SuratKeluar.find(47).pengguna << Pengguna.find(14)
SuratKeluar.find(48).pengguna << Pengguna.find(14)
SuratKeluar.find(49).pengguna << Pengguna.find(14)
SuratKeluar.find(50).pengguna << Pengguna.find(14)

# Assigned SuratKeluar 41-50 with Seksi ke-1
SuratKeluar.find(41).seksi << Seksi.find(5)
SuratKeluar.find(42).seksi << Seksi.find(5)
SuratKeluar.find(43).seksi << Seksi.find(5)
SuratKeluar.find(44).seksi << Seksi.find(5)
SuratKeluar.find(45).seksi << Seksi.find(5)
SuratKeluar.find(46).seksi << Seksi.find(5)
SuratKeluar.find(47).seksi << Seksi.find(5)
SuratKeluar.find(48).seksi << Seksi.find(5)
SuratKeluar.find(49).seksi << Seksi.find(5)
SuratKeluar.find(50).seksi << Seksi.find(5)



# Assigned SuratKeluar 51-60 with Pengguna ke-15
SuratKeluar.find(51).pengguna << Pengguna.find(15)
SuratKeluar.find(52).pengguna << Pengguna.find(15)
SuratKeluar.find(53).pengguna << Pengguna.find(15)
SuratKeluar.find(54).pengguna << Pengguna.find(15)
SuratKeluar.find(55).pengguna << Pengguna.find(15)
SuratKeluar.find(56).pengguna << Pengguna.find(15)
SuratKeluar.find(57).pengguna << Pengguna.find(15)
SuratKeluar.find(58).pengguna << Pengguna.find(15)
SuratKeluar.find(59).pengguna << Pengguna.find(15)
SuratKeluar.find(60).pengguna << Pengguna.find(15)

# Assigned SuratKeluar 51-60 with Seksi ke-6
SuratKeluar.find(51).seksi << Seksi.find(6)
SuratKeluar.find(52).seksi << Seksi.find(6)
SuratKeluar.find(53).seksi << Seksi.find(6)
SuratKeluar.find(54).seksi << Seksi.find(6)
SuratKeluar.find(55).seksi << Seksi.find(6)
SuratKeluar.find(56).seksi << Seksi.find(6)
SuratKeluar.find(57).seksi << Seksi.find(6)
SuratKeluar.find(58).seksi << Seksi.find(6)
SuratKeluar.find(59).seksi << Seksi.find(6)
SuratKeluar.find(60).seksi << Seksi.find(6)



# Assigned SuratKeluar 61-70 with Pengguna ke-16
SuratKeluar.find(61).pengguna << Pengguna.find(16)
SuratKeluar.find(62).pengguna << Pengguna.find(16)
SuratKeluar.find(63).pengguna << Pengguna.find(16)
SuratKeluar.find(64).pengguna << Pengguna.find(16)
SuratKeluar.find(65).pengguna << Pengguna.find(16)
SuratKeluar.find(66).pengguna << Pengguna.find(16)
SuratKeluar.find(67).pengguna << Pengguna.find(16)
SuratKeluar.find(68).pengguna << Pengguna.find(16)
SuratKeluar.find(69).pengguna << Pengguna.find(16)
SuratKeluar.find(70).pengguna << Pengguna.find(16)

# Assigned SuratKeluar 61-70 with Seksi ke-7
SuratKeluar.find(61).seksi << Seksi.find(7)
SuratKeluar.find(62).seksi << Seksi.find(7)
SuratKeluar.find(63).seksi << Seksi.find(7)
SuratKeluar.find(64).seksi << Seksi.find(7)
SuratKeluar.find(65).seksi << Seksi.find(7)
SuratKeluar.find(66).seksi << Seksi.find(7)
SuratKeluar.find(67).seksi << Seksi.find(7)
SuratKeluar.find(68).seksi << Seksi.find(7)
SuratKeluar.find(69).seksi << Seksi.find(7)
SuratKeluar.find(70).seksi << Seksi.find(7)



# Assigned SuratKeluar 71-80 with Pengguna ke-17
SuratKeluar.find(71).pengguna << Pengguna.find(17)
SuratKeluar.find(72).pengguna << Pengguna.find(17)
SuratKeluar.find(73).pengguna << Pengguna.find(17)
SuratKeluar.find(74).pengguna << Pengguna.find(17)
SuratKeluar.find(75).pengguna << Pengguna.find(17)
SuratKeluar.find(76).pengguna << Pengguna.find(17)
SuratKeluar.find(77).pengguna << Pengguna.find(17)
SuratKeluar.find(78).pengguna << Pengguna.find(17)
SuratKeluar.find(79).pengguna << Pengguna.find(17)
SuratKeluar.find(80).pengguna << Pengguna.find(17)

# Assigned SuratKeluar 71-80 with Seksi ke-8
SuratKeluar.find(71).seksi << Seksi.find(8)
SuratKeluar.find(72).seksi << Seksi.find(8)
SuratKeluar.find(73).seksi << Seksi.find(8)
SuratKeluar.find(74).seksi << Seksi.find(8)
SuratKeluar.find(75).seksi << Seksi.find(8)
SuratKeluar.find(76).seksi << Seksi.find(8)
SuratKeluar.find(77).seksi << Seksi.find(8)
SuratKeluar.find(78).seksi << Seksi.find(8)
SuratKeluar.find(79).seksi << Seksi.find(8)
SuratKeluar.find(80).seksi << Seksi.find(8)



# Assigned SuratKeluar 81-90 with Pengguna ke-18
SuratKeluar.find(81).pengguna << Pengguna.find(18)
SuratKeluar.find(82).pengguna << Pengguna.find(18)
SuratKeluar.find(83).pengguna << Pengguna.find(18)
SuratKeluar.find(84).pengguna << Pengguna.find(18)
SuratKeluar.find(85).pengguna << Pengguna.find(18)
SuratKeluar.find(86).pengguna << Pengguna.find(18)
SuratKeluar.find(87).pengguna << Pengguna.find(18)
SuratKeluar.find(88).pengguna << Pengguna.find(18)
SuratKeluar.find(89).pengguna << Pengguna.find(18)
SuratKeluar.find(90).pengguna << Pengguna.find(18)

# Assigned SuratKeluar 81-90 with Seksi ke-9
SuratKeluar.find(81).seksi << Seksi.find(9)
SuratKeluar.find(82).seksi << Seksi.find(9)
SuratKeluar.find(83).seksi << Seksi.find(9)
SuratKeluar.find(84).seksi << Seksi.find(9)
SuratKeluar.find(85).seksi << Seksi.find(9)
SuratKeluar.find(86).seksi << Seksi.find(9)
SuratKeluar.find(87).seksi << Seksi.find(9)
SuratKeluar.find(88).seksi << Seksi.find(9)
SuratKeluar.find(89).seksi << Seksi.find(9)
SuratKeluar.find(90).seksi << Seksi.find(9)



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

# Assigned Pengguna 1-3 with StatusAkun.keterangan = Aktif
Pengguna.find(1).status_akun << StatusAkun.find(2)
Pengguna.find(2).status_akun << StatusAkun.find(2)
Pengguna.find(3).status_akun << StatusAkun.find(2)
Pengguna.find(4).status_akun << StatusAkun.find(2)
Pengguna.find(5).status_akun << StatusAkun.find(2)
Pengguna.find(6).status_akun << StatusAkun.find(2)
Pengguna.find(7).status_akun << StatusAkun.find(2)
Pengguna.find(8).status_akun << StatusAkun.find(2)
Pengguna.find(9).status_akun << StatusAkun.find(2)
Pengguna.find(10).status_akun << StatusAkun.find(2)
Pengguna.find(11).status_akun << StatusAkun.find(2)
Pengguna.find(12).status_akun << StatusAkun.find(2)
Pengguna.find(13).status_akun << StatusAkun.find(2)
Pengguna.find(14).status_akun << StatusAkun.find(2)
Pengguna.find(15).status_akun << StatusAkun.find(2)
Pengguna.find(16).status_akun << StatusAkun.find(2)
Pengguna.find(17).status_akun << StatusAkun.find(2)
Pengguna.find(18).status_akun << StatusAkun.find(2)
# Assigned Pengguna 4 with StatusAkun.keterangan = Administrator
Pengguna.find(19).status_akun << StatusAkun.find(3)