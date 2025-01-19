# Kripto Para Takip Uygulaması

Swift UI ile geliştirilmiş, kripto para verilerini gerçek zamanlı takip eden modern bir iOS uygulaması.

## 🚀 Özellikler

- SwiftUI ile modern ve responsive kullanıcı arayüzü
- MVVM (Model-View-ViewModel) mimari deseni
- Asenkron veri işleme ve @MainActor kullanımı
- Canlı kripto para verisi çekme
- JSON veri parse etme ve işleme
- Async/await ile modern Swift concurrency

## 📋 Gereksinimler

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

## 🛠 Teknik Yapı

### Mimari
Proje MVVM (Model-View-ViewModel) mimarisi kullanılarak geliştirilmiştir. Bu sayede:
- Kod tekrarı minimuma indirilmiştir
- Test edilebilirlik artırılmıştır
- Bakım kolaylığı sağlanmıştır
- UI ve iş mantığı birbirinden ayrılmıştır

### Async/Await ve @MainActor
- Network istekleri async/await kullanılarak yapılmaktadır
- @MainActor ile UI güncellemeleri güvenli bir şekilde main thread'de gerçekleştirilmektedir
- Modern Swift concurrency özellikleri kullanılarak performans optimize edilmiştir

### Veri Akışı
1. API'den JSON formatında kripto para verileri çekilir
2. Veriler asenkron olarak parse edilir
3. ViewModel'da işlenir
4. SwiftUI view'ları otomatik olarak güncellenir

## 🔧 Kurulum

1. Repo'yu klonlayın:
```bash
git clone https://github.com/erennali/CryptoSwiftUI_MVVM.git
