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
  * [x] Password
  * [x] StatusKepegawaian
  * [x] Jabatan
  * [x] Seksi
  * [ ] Unit?

    > Create join table

    > Create validations

* [x] Create Login/Signup model
* [ ] Add white space to regex: `/catel/app/models/surat_masuk.rb`

Future Improvements
* If `Jabatan.nama = Kepala..../Penyelenggara....` is doing other task outside the office than `Jabatan.nama = PLH....`

## Error
### Rails Test
```bash
Running via Spring preloader in process 9680
Run options: --seed 17139

# Running:

F

Failure:
DasborControllerTest#test_should_get_index [/home/ubuntu/workspace/catel/test/controllers/dasbor_controller_test.rb:6]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/dasbor_controller_test.rb:4

.F

Failure:
JabatanControllerTest#test_should_show_jabatan [/home/ubuntu/workspace/catel/test/controllers/jabatan_controller_test.rb:28]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/jabatan_controller_test.rb:26

F

Failure:
JabatanControllerTest#test_should_update_jabatan [/home/ubuntu/workspace/catel/test/controllers/jabatan_controller_test.rb:38]:
Expected response to be a redirect to <http://www.example.com/jabatan/980190962> but was a redirect to <http://www.example.com/login>.
Expected "http://www.example.com/jabatan/980190962" to be === "http://www.example.com/login".


bin/rails test test/controllers/jabatan_controller_test.rb:36

F

Failure:
JabatanControllerTest#test_should_get_index [/home/ubuntu/workspace/catel/test/controllers/jabatan_controller_test.rb:10]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/jabatan_controller_test.rb:8

F

Failure:
JabatanControllerTest#test_should_create_jabatan [/home/ubuntu/workspace/catel/test/controllers/jabatan_controller_test.rb:19]:
"Jabatan.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/jabatan_controller_test.rb:18

F

Failure:
JabatanControllerTest#test_should_get_new [/home/ubuntu/workspace/catel/test/controllers/jabatan_controller_test.rb:15]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/jabatan_controller_test.rb:13

F

Failure:
JabatanControllerTest#test_should_destroy_jabatan [/home/ubuntu/workspace/catel/test/controllers/jabatan_controller_test.rb:42]:
"Jabatan.count" didn't change by -1.
Expected: 1
  Actual: 2


bin/rails test test/controllers/jabatan_controller_test.rb:41

F

Failure:
JabatanControllerTest#test_should_get_edit [/home/ubuntu/workspace/catel/test/controllers/jabatan_controller_test.rb:33]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/jabatan_controller_test.rb:31

F

Failure:
StatusKepegawaianControllerTest#test_should_destroy_status_kepegawaian [/home/ubuntu/workspace/catel/test/controllers/status_kepegawaian_controller_test.rb:42]:
"StatusKepegawaian.count" didn't change by -1.
Expected: 1
  Actual: 2


bin/rails test test/controllers/status_kepegawaian_controller_test.rb:41

F

Failure:
StatusKepegawaianControllerTest#test_should_get_index [/home/ubuntu/workspace/catel/test/controllers/status_kepegawaian_controller_test.rb:10]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/status_kepegawaian_controller_test.rb:8

F

Failure:
StatusKepegawaianControllerTest#test_should_update_status_kepegawaian [/home/ubuntu/workspace/catel/test/controllers/status_kepegawaian_controller_test.rb:38]:
Expected response to be a redirect to <http://www.example.com/status_kepegawaian/980190962> but was a redirect to <http://www.example.com/login>.
Expected "http://www.example.com/status_kepegawaian/980190962" to be === "http://www.example.com/login".


bin/rails test test/controllers/status_kepegawaian_controller_test.rb:36

F

Failure:
StatusKepegawaianControllerTest#test_should_create_status_kepegawaian [/home/ubuntu/workspace/catel/test/controllers/status_kepegawaian_controller_test.rb:19]:
"StatusKepegawaian.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/status_kepegawaian_controller_test.rb:18

F

Failure:
StatusKepegawaianControllerTest#test_should_get_new [/home/ubuntu/workspace/catel/test/controllers/status_kepegawaian_controller_test.rb:15]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/status_kepegawaian_controller_test.rb:13

F

Failure:
StatusKepegawaianControllerTest#test_should_get_edit [/home/ubuntu/workspace/catel/test/controllers/status_kepegawaian_controller_test.rb:33]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/status_kepegawaian_controller_test.rb:31

F

Failure:
StatusKepegawaianControllerTest#test_should_show_status_kepegawaian [/home/ubuntu/workspace/catel/test/controllers/status_kepegawaian_controller_test.rb:28]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/status_kepegawaian_controller_test.rb:26

F

Failure:
SuratKeluarControllerTest#test_should_get_index [/home/ubuntu/workspace/catel/test/controllers/surat_keluar_controller_test.rb:10]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/surat_keluar_controller_test.rb:8

F

Failure:
SuratKeluarControllerTest#test_should_get_new [/home/ubuntu/workspace/catel/test/controllers/surat_keluar_controller_test.rb:15]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/surat_keluar_controller_test.rb:13

F

Failure:
SuratKeluarControllerTest#test_should_show_surat_keluar [/home/ubuntu/workspace/catel/test/controllers/surat_keluar_controller_test.rb:28]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/surat_keluar_controller_test.rb:26

F

Failure:
SuratKeluarControllerTest#test_should_update_surat_keluar [/home/ubuntu/workspace/catel/test/controllers/surat_keluar_controller_test.rb:38]:
Expected response to be a redirect to <http://www.example.com/surat_keluar/980190962> but was a redirect to <http://www.example.com/login>.
Expected "http://www.example.com/surat_keluar/980190962" to be === "http://www.example.com/login".


bin/rails test test/controllers/surat_keluar_controller_test.rb:36

F

Failure:
SuratKeluarControllerTest#test_should_get_edit [/home/ubuntu/workspace/catel/test/controllers/surat_keluar_controller_test.rb:33]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/surat_keluar_controller_test.rb:31

F

Failure:
SuratKeluarControllerTest#test_should_destroy_surat_keluar [/home/ubuntu/workspace/catel/test/controllers/surat_keluar_controller_test.rb:42]:
"SuratKeluar.count" didn't change by -1.
Expected: 1
  Actual: 2


bin/rails test test/controllers/surat_keluar_controller_test.rb:41

F

Failure:
SuratKeluarControllerTest#test_should_create_surat_keluar [/home/ubuntu/workspace/catel/test/controllers/surat_keluar_controller_test.rb:19]:
"SuratKeluar.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/surat_keluar_controller_test.rb:18

..F

Failure:
SuratMasukControllerTest#test_should_get_new [/home/ubuntu/workspace/catel/test/controllers/surat_masuk_controller_test.rb:15]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/surat_masuk_controller_test.rb:13

F

Failure:
SuratMasukControllerTest#test_should_get_edit [/home/ubuntu/workspace/catel/test/controllers/surat_masuk_controller_test.rb:33]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/surat_masuk_controller_test.rb:31

F

Failure:
SuratMasukControllerTest#test_should_create_surat_masuk [/home/ubuntu/workspace/catel/test/controllers/surat_masuk_controller_test.rb:19]:
"SuratMasuk.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/surat_masuk_controller_test.rb:18

F

Failure:
SuratMasukControllerTest#test_should_update_surat_masuk [/home/ubuntu/workspace/catel/test/controllers/surat_masuk_controller_test.rb:38]:
Expected response to be a redirect to <http://www.example.com/surat_masuk/980190962> but was a redirect to <http://www.example.com/login>.
Expected "http://www.example.com/surat_masuk/980190962" to be === "http://www.example.com/login".


bin/rails test test/controllers/surat_masuk_controller_test.rb:36

F

Failure:
SuratMasukControllerTest#test_should_get_index [/home/ubuntu/workspace/catel/test/controllers/surat_masuk_controller_test.rb:10]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/surat_masuk_controller_test.rb:8

F

Failure:
SuratMasukControllerTest#test_should_show_surat_masuk [/home/ubuntu/workspace/catel/test/controllers/surat_masuk_controller_test.rb:28]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/surat_masuk_controller_test.rb:26

F

Failure:
SuratMasukControllerTest#test_should_destroy_surat_masuk [/home/ubuntu/workspace/catel/test/controllers/surat_masuk_controller_test.rb:42]:
"SuratMasuk.count" didn't change by -1.
Expected: 1
  Actual: 2


bin/rails test test/controllers/surat_masuk_controller_test.rb:41

F

Failure:
PenggunaControllerTest#test_should_get_edit [/home/ubuntu/workspace/catel/test/controllers/pengguna_controller_test.rb:33]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/pengguna_controller_test.rb:31

F

Failure:
PenggunaControllerTest#test_should_update_pengguna [/home/ubuntu/workspace/catel/test/controllers/pengguna_controller_test.rb:38]:
Expected response to be a redirect to <http://www.example.com/pengguna/980190962> but was a redirect to <http://www.example.com/login>.
Expected "http://www.example.com/pengguna/980190962" to be === "http://www.example.com/login".


bin/rails test test/controllers/pengguna_controller_test.rb:36

F

Failure:
PenggunaControllerTest#test_should_destroy_pengguna [/home/ubuntu/workspace/catel/test/controllers/pengguna_controller_test.rb:42]:
"Pengguna.count" didn't change by -1.
Expected: 1
  Actual: 2


bin/rails test test/controllers/pengguna_controller_test.rb:41

F

Failure:
PenggunaControllerTest#test_should_get_index [/home/ubuntu/workspace/catel/test/controllers/pengguna_controller_test.rb:10]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/pengguna_controller_test.rb:8

F

Failure:
PenggunaControllerTest#test_should_show_pengguna [/home/ubuntu/workspace/catel/test/controllers/pengguna_controller_test.rb:28]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/pengguna_controller_test.rb:26

F

Failure:
PenggunaControllerTest#test_should_create_pengguna [/home/ubuntu/workspace/catel/test/controllers/pengguna_controller_test.rb:19]:
"Pengguna.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/pengguna_controller_test.rb:18

F

Failure:
PenggunaControllerTest#test_should_get_new [/home/ubuntu/workspace/catel/test/controllers/pengguna_controller_test.rb:15]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/pengguna_controller_test.rb:13

F

Failure:
SeksiControllerTest#test_should_create_seksi [/home/ubuntu/workspace/catel/test/controllers/seksi_controller_test.rb:19]:
"Seksi.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/seksi_controller_test.rb:18

F

Failure:
SeksiControllerTest#test_should_destroy_seksi [/home/ubuntu/workspace/catel/test/controllers/seksi_controller_test.rb:42]:
"Seksi.count" didn't change by -1.
Expected: 1
  Actual: 2


bin/rails test test/controllers/seksi_controller_test.rb:41

F

Failure:
SeksiControllerTest#test_should_show_seksi [/home/ubuntu/workspace/catel/test/controllers/seksi_controller_test.rb:28]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/seksi_controller_test.rb:26

F

Failure:
SeksiControllerTest#test_should_get_edit [/home/ubuntu/workspace/catel/test/controllers/seksi_controller_test.rb:33]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/seksi_controller_test.rb:31

F

Failure:
SeksiControllerTest#test_should_update_seksi [/home/ubuntu/workspace/catel/test/controllers/seksi_controller_test.rb:38]:
Expected response to be a redirect to <http://www.example.com/seksi/980190962> but was a redirect to <http://www.example.com/login>.
Expected "http://www.example.com/seksi/980190962" to be === "http://www.example.com/login".


bin/rails test test/controllers/seksi_controller_test.rb:36

F

Failure:
SeksiControllerTest#test_should_get_index [/home/ubuntu/workspace/catel/test/controllers/seksi_controller_test.rb:10]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/seksi_controller_test.rb:8

F

Failure:
SeksiControllerTest#test_should_get_new [/home/ubuntu/workspace/catel/test/controllers/seksi_controller_test.rb:15]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/seksi_controller_test.rb:13

F

Failure:
DaftarPustakaControllerTest#test_should_get_edit [/home/ubuntu/workspace/catel/test/controllers/daftar_pustaka_controller_test.rb:33]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/daftar_pustaka_controller_test.rb:31

F

Failure:
DaftarPustakaControllerTest#test_should_create_daftar_pustaka [/home/ubuntu/workspace/catel/test/controllers/daftar_pustaka_controller_test.rb:19]:
"DaftarPustaka.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/daftar_pustaka_controller_test.rb:18

F

Failure:
DaftarPustakaControllerTest#test_should_get_new [/home/ubuntu/workspace/catel/test/controllers/daftar_pustaka_controller_test.rb:15]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/daftar_pustaka_controller_test.rb:13

F

Failure:
DaftarPustakaControllerTest#test_should_show_daftar_pustaka [/home/ubuntu/workspace/catel/test/controllers/daftar_pustaka_controller_test.rb:28]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/daftar_pustaka_controller_test.rb:26

F

Failure:
DaftarPustakaControllerTest#test_should_update_daftar_pustaka [/home/ubuntu/workspace/catel/test/controllers/daftar_pustaka_controller_test.rb:38]:
Expected response to be a redirect to <http://www.example.com/daftar_pustaka/980190962> but was a redirect to <http://www.example.com/login>.
Expected "http://www.example.com/daftar_pustaka/980190962" to be === "http://www.example.com/login".


bin/rails test test/controllers/daftar_pustaka_controller_test.rb:36

F

Failure:
DaftarPustakaControllerTest#test_should_destroy_daftar_pustaka [/home/ubuntu/workspace/catel/test/controllers/daftar_pustaka_controller_test.rb:42]:
"DaftarPustaka.count" didn't change by -1.
Expected: 1
  Actual: 2


bin/rails test test/controllers/daftar_pustaka_controller_test.rb:41

F

Failure:
DaftarPustakaControllerTest#test_should_get_index [/home/ubuntu/workspace/catel/test/controllers/daftar_pustaka_controller_test.rb:10]:
Expected response to be a <2XX: success>, but was a <302: Found> redirect to <http://www.example.com/login>
Response body: <html><body>You are being <a href="http://www.example.com/login">redirected</a>.</body></html>


bin/rails test test/controllers/daftar_pustaka_controller_test.rb:8



Finished in 1.014562s, 52.2393 runs/s, 60.1244 assertions/s.
53 runs, 61 assertions, 50 failures, 0 errors, 0 skips
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

## Learn resources
* [Rails for Zombies](http://railsforzombies.org)
* [Ruby Plus](https://rubyplus.com/articles/3901-Polymorphic-Association-in-Rails-5)
* [Code Mentor](https://www.codementor.io/ruby-on-rails/tutorial/threaded-comments-polymorphic-associations)
* [Try Ruby](http://tryruby.org)
* [Sitepoint](https://www.sitepoint.com/save-multiple-checkbox-values-database-rails/)
* [Rails Tutorial](https://www.railstutorial.org)
* [8th Color](http://blog.8thcolor.com/en/2011/08/nested-resources-with-independent-views-in-ruby-on-rails/)
* [Robots Thoughbot](https://robots.thoughtbot.com/its-about-time-zones)
* [Hack Hands](https://hackhands.com/format-datetime-ruby/)
* Rails Casts
  * [Polymorphic Association](http://railscasts.com/episodes/154-polymorphic-association-revised)
  * [Authentication from Scratch](http://railscasts.com/episodes/250-authentication-from-scratch-revised)
  * [Remember Me Reset Password](http://railscasts.com/episodes/274-remember-me-reset-password)

## Get stuck? Don't!
* [Google](https://www.google.com)
* [Stack Overflow](https://stackoverflow.com/)