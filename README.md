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
Running via Spring preloader in process 8966
Run options: --seed 6740

# Running:

......F

Failure:
SuratMasukControllerTest#test_should_create_surat_masuk [/home/ubuntu/workspace/catel/test/controllers/surat_masuk_controller_test.rb:19]:
"SuratMasuk.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/surat_masuk_controller_test.rb:18

.F

Failure:
PenggunaControllerTest#test_should_create_pengguna [/home/ubuntu/workspace/catel/test/controllers/pengguna_controller_test.rb:19]:
"Pengguna.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/pengguna_controller_test.rb:18

..F

Failure:
PenggunaControllerTest#test_should_update_pengguna [/home/ubuntu/workspace/catel/test/controllers/pengguna_controller_test.rb:38]:
Expected response to be a <3XX: redirect>, but was a <200: OK>


bin/rails test test/controllers/pengguna_controller_test.rb:36

...........F

Failure:
DaftarPustakaControllerTest#test_should_update_daftar_pustaka [/home/ubuntu/workspace/catel/test/controllers/daftar_pustaka_controller_test.rb:38]:
Expected response to be a <3XX: redirect>, but was a <200: OK>


bin/rails test test/controllers/daftar_pustaka_controller_test.rb:36

.F

Failure:
DaftarPustakaControllerTest#test_should_create_daftar_pustaka [/home/ubuntu/workspace/catel/test/controllers/daftar_pustaka_controller_test.rb:19]:
"DaftarPustaka.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/daftar_pustaka_controller_test.rb:18

..F

Failure:
SeksiControllerTest#test_should_create_seksi [/home/ubuntu/workspace/catel/test/controllers/seksi_controller_test.rb:19]:
"Seksi.count" didn't change by 1.
Expected: 3
  Actual: 2


bin/rails test test/controllers/seksi_controller_test.rb:18

..F

Failure:
SeksiControllerTest#test_should_update_seksi [/home/ubuntu/workspace/catel/test/controllers/seksi_controller_test.rb:38]:
Expected response to be a <3XX: redirect>, but was a <200: OK>


bin/rails test test/controllers/seksi_controller_test.rb:36

....E

Error:
SuratKeluarControllerTest#test_should_show_surat_keluar:
ActionView::Template::Error: undefined method `judul' for nil:NilClass
    app/views/surat_keluar/show.html.haml:6:in `_app_views_surat_keluar_show_html_haml___3692641867719819289_57476660'
    test/controllers/surat_keluar_controller_test.rb:27:in `block in <class:SuratKeluarControllerTest>'


bin/rails test test/controllers/surat_keluar_controller_test.rb:26

E

Error:
SuratKeluarControllerTest#test_should_update_surat_keluar:
AbstractController::ActionNotFound: The action 'update' could not be found for SuratKeluarController
    test/controllers/surat_keluar_controller_test.rb:37:in `block in <class:SuratKeluarControllerTest>'


bin/rails test test/controllers/surat_keluar_controller_test.rb:36

E

Error:
SuratKeluarControllerTest#test_should_get_new:
ActionView::Template::Error: First argument in form cannot contain nil or be empty
    app/views/surat_keluar/_form.html.haml:1:in `_app_views_surat_keluar__form_html_haml__3835342730587651763_57313480'
    app/views/surat_keluar/new.html.haml:5:in `_app_views_surat_keluar_new_html_haml___1767919705739880885_56932260'
    test/controllers/surat_keluar_controller_test.rb:14:in `block in <class:SuratKeluarControllerTest>'


bin/rails test test/controllers/surat_keluar_controller_test.rb:13

E

Error:
SuratKeluarControllerTest#test_should_create_surat_keluar:
AbstractController::ActionNotFound: The action 'create' could not be found for SuratKeluarController
    test/controllers/surat_keluar_controller_test.rb:20:in `block (2 levels) in <class:SuratKeluarControllerTest>'
    test/controllers/surat_keluar_controller_test.rb:19:in `block in <class:SuratKeluarControllerTest>'


bin/rails test test/controllers/surat_keluar_controller_test.rb:18

E

Error:
SuratKeluarControllerTest#test_should_destroy_surat_keluar:
AbstractController::ActionNotFound: The action 'destroy' could not be found for SuratKeluarController
    test/controllers/surat_keluar_controller_test.rb:43:in `block (2 levels) in <class:SuratKeluarControllerTest>'
    test/controllers/surat_keluar_controller_test.rb:42:in `block in <class:SuratKeluarControllerTest>'


bin/rails test test/controllers/surat_keluar_controller_test.rb:41

E

Error:
SuratKeluarControllerTest#test_should_get_edit:
ActionView::Template::Error: First argument in form cannot contain nil or be empty
    app/views/surat_keluar/_form.html.haml:1:in `_app_views_surat_keluar__form_html_haml__3835342730587651763_57313480'
    app/views/surat_keluar/edit.html.haml:4:in `_app_views_surat_keluar_edit_html_haml___1680900545137021469_56534360'
    test/controllers/surat_keluar_controller_test.rb:32:in `block in <class:SuratKeluarControllerTest>'


bin/rails test test/controllers/surat_keluar_controller_test.rb:31

E

Error:
SuratKeluarControllerTest#test_should_get_index:
ActionView::Template::Error: undefined method `each' for nil:NilClass
    app/views/surat_keluar/index.html.haml:17:in `_app_views_surat_keluar_index_html_haml__2433178989011360098_56442240'
    test/controllers/surat_keluar_controller_test.rb:9:in `block in <class:SuratKeluarControllerTest>'


bin/rails test test/controllers/surat_keluar_controller_test.rb:8

E

Error:
SessionsControllerTest#test_should_get_new:
NameError: undefined local variable or method `sessions_new_url' for #<SessionsControllerTest:0x0000000696a748>
    test/controllers/sessions_controller_test.rb:5:in `block in <class:SessionsControllerTest>'


bin/rails test test/controllers/sessions_controller_test.rb:4

.........

Finished in 3.657943s, 14.4890 runs/s, 14.7624 assertions/s.
53 runs, 54 assertions, 7 failures, 8 errors, 0 skips
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