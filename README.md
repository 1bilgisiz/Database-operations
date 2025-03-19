<h1>Flutter SQLite Database Project</h1>

<p>Bu proje, <strong>Flutter</strong> ve <strong>Dart</strong> kullanılarak geliştirilmiş olup, veritabanı işlemlerini göstermek amacıyla oluşturulmuştur.</p>

<h2>🛠 Kullanılan Teknolojiler</h2>
<ul>
  <li>Flutter</li>
  <li>Dart</li>
  <li>SQLite</li>
</ul>

<h2>📌 Proje Açıklaması</h2>
<p>Projede <strong>Singleton Design Pattern</strong> kullanılarak bir <code>DatabaseHelper</code> sınıfı oluşturulmuş ve <strong>SQLite</strong> ile temel veritabanı işlemleri gerçekleştirilmiştir.</p>
<p>Tüm veritabanı işlemleri tek bir Dart dosyasında toplanmıştır.</p>

<h2>🔍 Gerçekleştirilen İşlemler</h2>
<ul>
  <li><strong>Kayıt ekleme (INSERT)</strong></li>
  <li><strong>Tüm kayıtları listeleme (SELECT)</strong></li>
  <li><strong>Belirli bir kaydı getirme (SELECT WHERE)</strong></li>
  <li><strong>Kayıt güncelleme (UPDATE)</strong></li>
  <li><strong>Kayıt silme (DELETE)</strong></li>
</ul>

<h2>⚙️ Veritabanı Yönetimi</h2>
<p>Bu yapı sayesinde veritabanı işlemleri daha <strong>modüler</strong> ve <strong>yönetilebilir</strong> hâle getirilmiştir.</p>
<p>Tüm işlemler <code>DatabaseHelper</code> sınıfı üzerinden yönetilerek <strong>tek bir merkezden</strong> veritabanı yönetimi sağlanmıştır.</p>

<h2>📂 Proje Kurulumu</h2>
<pre>
git clone https://github.com/kullaniciAdi/projeAdi.git
cd projeAdi
flutter pub get
flutter run
</pre>

