# Instacart SQL Analytics Project

## Proje Amacı
Bu projede, Instacart e-ticaret veri seti kullanılarak müşteri sipariş davranışları Microsoft SQL Server üzerinde analiz edilmiştir. Analizler, kullanıcıların sipariş sıklığı, tekrar sipariş davranışı ve zamansal sipariş eğilimlerini ortaya koymayı amaçlamaktadır.

## Veri Seti
Instacart Online Grocery Shopping Dataset (Kaggle)
Bu projede yalnızca orders tablosu kullanılmıştır.

## Kullanılan Teknolojiler
- Microsoft SQL Server
- T-SQL

## Analizler ve Bulgular
---

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

Analiz Sonuçları (Results)

Analizler sonucunda elde edilen tablo çıktıları ve özet sonuçlar ınstacart_results/ klasörü altında paylaşılmıştır.

Proje Yapısı

sql/ → T-SQL analiz sorguları
ınstacart_results/ → Sorgu çıktıları ve analiz sonuçları
README.md → Proje açıklaması
