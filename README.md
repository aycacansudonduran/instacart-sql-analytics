# Instacart SQL Analytics Project

## Proje Amacı
Bu proje, e-ticaret verileri üzerinde SQL kullanarak müşteri satın alma davranışlarını ve sipariş dinamiklerini analiz etmeyi amaçlamaktadır. Yapılan analizlerle kullanıcı alışkanlıklarına ve satış yapısına dair temel içgörüler elde edilmesi hedeflenmiştir. Çalışma, SQL ile veri analizi ve iş odaklı metrikler üretme becerisini göstermektedir.

## Kullanılan Veri Setleri
orders → Sipariş bazlı bilgiler
order_products_prior → Sipariş–ürün ilişkileri (sepet içeriği)
Veri kaynağı: Instacart Online Grocery Shopping Dataset (Kaggle)

## Kullanılan Teknolojiler
- Microsoft SQL Server
- T-SQL

## Analizler ve Bulgular
---
## A) Orders Tablosu Üzerinden Yapılan Analizler

### 1. Haftanın Günlerine Göre Sipariş Dağılımı
Siparişlerin hafta sonlarında yoğunlaştığı, özellikle Pazar gününün en yüksek sipariş hacmine sahip olduğu tespit edilmiştir.

### 2. Gün İçindeki Saatlere Göre Sipariş Dağılımı
Siparişlerin sabah saatlerinden itibaren arttığı, 09:00–15:00 saatleri arasında zirve yaptığı ve gece saatlerinde minimum seviyeye indiği görülmüştür.

### 3. Kullanıcıların Toplam Sipariş Sayısı Dağılımı
Bu analizde kullanıcıların toplam sipariş sayıları incelenmiştir. Sonuçlar, kullanıcılar arasında sipariş yoğunluğu açısından belirgin farklılıklar olduğunu göstermektedir.

### 4. Tekrar Sipariş Davranışı (First vs Repeat Order)
Bu analizde siparişler ilk sipariş ve tekrar sipariş olarak sınıflandırılmıştır. Sonuçlara göre 206.209 adet sipariş ilk sipariş, 3.214.874 adet sipariş ise tekrar sipariş olarak gerçekleşmiştir. Tekrar siparişlerin toplam siparişler içerisindeki belirgin ağırlığı, kullanıcıların ilk sipariş sonrası platformu kullanmaya devam ettiğini göstermektedir.

### 5. Siparişler Arası Gün Farkı Dağılımı
Bu analizde kullanıcıların siparişleri arasındaki gün farkları incelenmiştir. Sonuçlara göre en yüksek sipariş yoğunluğu 7 gün aralığında (320.608 sipariş) ve 30 gün aralığında (369.323 sipariş) gözlemlenmiştir. Kısa süreli sipariş aralıklarının (0–7 gün) yüksek frekansa sahip olduğu, buna karşılık gün farkı arttıkça sipariş sayısının kademeli olarak azaldığı görülmektedir. Bu dağılım, kullanıcıların haftalık ve aylık periyotlarda düzenli sipariş verme eğilimine sahip olduğunu göstermektedir.

### 6. Kullanıcıların Sipariş Sürekliliği (Order Number Segmentasyonu)
Bu analizde siparişler, kullanıcıların toplam sipariş sayılarına göre segmentlere ayrılmıştır. Sonuçlara göre 10 ve üzeri sipariş segmenti 1.740.659 sipariş ile en yüksek paya sahiptir. Bunu sırasıyla 2–5 sipariş (800.850) ve 6–10 sipariş (673.365) segmentleri takip etmektedir. Tek sipariş veren kullanıcıların oluşturduğu segment ise 206.209 sipariş ile daha sınırlı bir paya sahiptir.

## B) Order_Products_Prior Tablosu Üzerinden Yapılan Analizler

### 7. Sipariş Başına Ürün Sayısı (Sepet Büyüklüğü)
Toplam 32.434.489 ürün, 3.214.874 siparişe dağılmıştır.
Sipariş başına ortalama ~10 ürün bulunmaktadır.
Bu sonuç, kullanıcıların platformu tekil ürünlerden ziyade toplu alışveriş amacıyla kullandığını göstermektedir.

### 8. En Çok Tekrar Edilen Ürünler (Reorder Analysis)
Listelenen ürünlerin tekrar sipariş oranlarının %90 ve üzeri olduğu görülmektedir. Bu durum, söz konusu ürünlerin kullanıcılar tarafından düzenli olarak tüketildiğini ve alışkanlık haline geldiğini göstermektedir. 
Özellikle %0,94 ve %0,93 gibi yüksek tekrar oranları, bu ürünlerin ilk satın alma sonrasında büyük ölçüde tekrar tercih edildiğini ve yüksek müşteri bağlılığına sahip olduğunu ortaya koymaktadır.

### 9. Sipariş Sırasına Göre Reorder Eğilimi
Sipariş sayısı arttıkça ürünlerin tekrar sipariş edilme oranının düzenli olarak yükseldiği görülmüştür. İlk siparişlerde tekrar oranı düşükken, 20. siparişten sonra %70’in üzerine çıkmakta ve ileri sipariş sıralarında %80+ seviyelerine ulaşmaktadır. Bu durum, uzun süreli kullanıcıların alışveriş davranışlarının büyük ölçüde rutinleştiğini göstermektedir.

### 10. Sepetteki Ürün Pozisyonuna Göre Reorder Oranı
Sepete ilk sıralarda eklenen ürünlerin tekrar sipariş edilme oranlarının daha yüksek olduğu gözlemlenmiştir. Sepet sırası ilerledikçe reorder oranı kademeli olarak düşmektedir. Bu bulgu, kullanıcıların sepete erken eklediği ürünlerin daha çok düzenli tüketilen ve alışkanlık haline gelmiş ürünler olduğunu göstermektedir.


Analiz Sonuçları (Results)
Analizler sonucunda elde edilen tablo çıktıları ve özet sonuçlar ınstacart_results/ klasörü altında paylaşılmıştır.

Proje Yapısı
sql/ → T-SQL analiz sorguları
ınstacart_results/ → Sorgu çıktıları ve analiz sonuçları
README.md → Proje açıklaması
