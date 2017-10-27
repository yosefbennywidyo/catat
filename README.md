# README

## Todo
* [ ] [Association](https://github.com/plataformatec/simple_form#associations)
* [ ] Create Status, Sifat and Derajat Pengaman (ex. comment as commentable) model
* [ ] Create Disposisi model
* [x] Create SuratKeluar model
* [x] Create SuratMasuk model
* [x] Create ~~KonsepSurat~~ DaftarPustaka model
* [ ] Create CatatanKerja model
* [x] Create Pengguna model
  * [x] Nama
  * [x] StatusKepegawaian
  * [x] Jabatan
  * [ ] Seksi
  * [ ] Unit

    > Create join table

    > Create validations

* [ ] Create Login/Signup model
* [ ] Add white space to regex: `/catel/app/models/surat_masuk.rb`

Future Improvements
* If `Jabatan.nama = Kepala..../Penyelenggara....` is doing other task outside the office than `Jabatan.nama = PLH....`

## Error
### Rails Test
```bash
Running via Spring preloader in process 6152
Run options: --seed 43574

# Running:

.F

Failure:
DaftarPustakaControllerTest#test_should_create_daftar_pustaka [/home/ubuntu/workspace/catel/test/controllers/daftar_pustaka_controller_test.rb:19]:
"DaftarPustaka.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/daftar_pustaka_controller_test.rb:18

.....F

Failure:
DaftarPustakaControllerTest#test_should_update_daftar_pustaka [/home/ubuntu/workspace/catel/test/controllers/daftar_pustaka_controller_test.rb:38]:
Expected response to be a <3XX: redirect>, but was a <200: OK>


bin/rails test test/controllers/daftar_pustaka_controller_test.rb:36

...F

Failure:
SuratKeluarControllerTest#test_should_create_surat_keluar [/home/ubuntu/workspace/catel/test/controllers/surat_keluar_controller_test.rb:19]:
"SuratKeluar.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/surat_keluar_controller_test.rb:18

....F

Failure:
SuratKeluarControllerTest#test_should_update_surat_keluar [/home/ubuntu/workspace/catel/test/controllers/surat_keluar_controller_test.rb:38]:
Expected response to be a <3XX: redirect>, but was a <200: OK>


bin/rails test test/controllers/surat_keluar_controller_test.rb:36

.....................F

Failure:
SuratMasukControllerTest#test_should_create_surat_masuk [/home/ubuntu/workspace/catel/test/controllers/surat_masuk_controller_test.rb:19]:
"SuratMasuk.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/surat_masuk_controller_test.rb:18

......

Finished in 2.979279s, 15.1043 runs/s, 18.4608 assertions/s.
45 runs, 55 assertions, 5 failures, 0 errors, 0 skips
```


* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
