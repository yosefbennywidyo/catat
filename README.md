# README

## Todo
* [ ] [Association](https://github.com/plataformatec/simple_form#associations)
* [ ] Membuat model untuk Status, Sifat and Derajat Pengaman (ex. comment as commentable)
* [ ] Membuat model untuk Disposisi
* [ ] Membuat model untuk SuratKeluar
* [x] Membuat model untuk SuratMasuk
* [ ] Membuat model untuk KonsepSurat
* [ ] Membuat Model untuk CatatanKerja
* [ ] Membuat model untuk Login/Signup
* [ ] Add white space to regex: `/catel/app/models/surat_masuk.rb`

## Error
### Rails Test
```bash
Run options: --seed 8101

# Running:

F

Failure:
SuratKeluarControllerTest#test_should_create_surat_keluar [/home/ubuntu/workspace/catel/test/controllers/surat_keluar_controller_test.rb:19]:
"SuratKeluar.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/surat_keluar_controller_test.rb:18

.....F

Failure:
SuratKeluarControllerTest#test_should_update_surat_keluar [/home/ubuntu/workspace/catel/test/controllers/surat_keluar_controller_test.rb:38]:
Expected response to be a <3XX: redirect>, but was a <200: OK>


bin/rails test test/controllers/surat_keluar_controller_test.rb:36

..........F

Failure:
SuratMasukControllerTest#test_should_create_surat_masuk [/home/ubuntu/workspace/catel/test/controllers/surat_masuk_controller_test.rb:19]:
"SuratMasuk.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/surat_masuk_controller_test.rb:18

......

Finished in 0.943277s, 25.4432 runs/s, 30.7439 assertions/s.
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
