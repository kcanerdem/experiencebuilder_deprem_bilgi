# 🌐 ArcGIS Experience Builder ile Deprem Analiz ve Bilgilendirme Uygulaması

Bu proje, Üsküdar Belediyesi'ndeki stajım kapsamında geliştirilmiş olup, afet hazırlık süreçlerini desteklemek ve kullanıcıların konum bazlı bilgiye hızlı ve etkili şekilde ulaşabilmesini sağlamak amacıyla ArcGIS Web Experience Builder kullanılarak oluşturulmuştur.

## 🧩 Uygulama Özellikleri

### 🔹 Mahalle Listesi Üzerinden Bilgi Erişimi
Kullanıcılar mahalle listesinden bir mahalle seçerek aşağıdaki bilgilere erişebilir:
- Yaş grubu dağılımı (grafik gösterim)
- Tahmini bina hasar durumu (grafik gösterim)
- Toplam konut sayısı
- Nüfus yoğunluğu
- Mahalledeki barınma tesisi ve toplanma alanı sayıları

### 🔍 Mahalle Bazlı Toplanma Alanı Sorgusu
Kullanıcılar seçilen mahalledeki toplanma alanlarının listesini görüntüleyebilir.  
Her bir toplanma alanının detay ekranında, **Google Maps üzerinde açılan navigasyon bağlantısı** aracılığıyla harici yönlendirme yapılabilir.

### 📍 En Yakın Toplanma Alanı Aracı
Haritada herhangi bir noktaya tıklanarak o konuma en yakın toplanma alanı ve yaklaşık mesafesi görüntülenebilir.  
Detay kartından **Google Maps bağlantısı** ile dış yönlendirme sağlanır.

### 🏚️ Mahalle ve Kapı No Bazlı Sorgulama
Kullanıcılar mahalle ve kapı numarasını girerek:
- Binanın tahmini hasar durumu
- En yakın toplanma alanı ve barınma tesisi
- İlgili noktalar için **Google Maps yönlendirme linklerine** ulaşabilir.

### 📡 Son Depremler Butonu
AFAD'ın son depremler sayfasına yönlendiren bir bağlantı ile kullanıcılar güncel depremleri harici olarak görüntüleyebilir.

---

## 🛠️ Kullanılan Teknolojiler

- **ArcGIS Web Experience Builder**
- **PostgreSQL + PostGIS**
- **ArcGIS Enterprise**
- **Arcade Expressions**
- **Google Maps URL yönlendirmeleri**

---

## 📷 Uygulama Görselleri

> Ana ekran – Mahalle seçimi ve detay bilgileri  
> ![Ana ekran](screenshots/ana_ekran.png)

> Detay kartı – Hasar grafikleri ve yol tarifi linkleri  
> ![Detay kartı](screenshots/detay_kart.png)

---
