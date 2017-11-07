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
  status: "Asli",
  sifat: "Sangat Segera/Kilat",
  derajat_pengaman: "Sangat Rahasia",
  dari: "Orang ke#{i}",
  perihal: "perihal#{i}"
  }])
end

p "Created #{SuratMasuk.count} surat masuk"



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


20.times do |i|
  Pengguna.create!([{
  nama: "Pengguna ke-#{i}",
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