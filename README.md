# 💳 Maglo Finance Dashboard – Flutter UI Case Study

Bu proje, Figma'daki [NodeLab Case Study](https://www.figma.com/design/JuY4rTmTQtqx75xczmmObw/React-Dev-%C2%B7-Case-Study-NodeLab) tasarımı referans alınarak Flutter kullanılarak geliştirilmiş modern bir finans dashboard arayüzüdür.



## 🎯 Amaç

Bu çalışma, responsive ve pixel-perfect bir Flutter UI arayüzü geliştirme yeteneklerinin sergilendiği bir case study projesidir. Tasarım detaylarına bağlı kalınarak gerçeğe en yakın şekilde kodlanmıştır.

---

## 🧩 Özellikler

✅ Dashboard ana görünümü  
✅ Overview Cards (Total Balance, Total Spending, Total Saved)  
✅ Working Capital Chart  
✅ Recent Transactions listesi  
✅ Wallet bölümünde iç içe iki katmanlı kart tasarımı  
✅ Scheduled Transfers alanı avatarlarla birlikte  
✅ Custom ikonlar: Chip, NFC, Mastercard (blur), Visa

---

## 📁 Klasör Yapısı
lib/
├── widgets/
│ ├── overview_cards.dart
│ ├── working_capital_chart.dart
│ ├── recent_transactions.dart
│ └── wallet_and_schedule.dart
├── main.dart
assets/
├── icons/
│ ├── chip.png
│ ├── wifi.png
│ ├── mastercard.png
│ └── visa.png
├── avatars/
│ └── 1.png ... 5.png


---

## 🛠️ Kullanılan Teknolojiler

- Flutter 3.x  
- Dart  
- Stateless Widget yapısı  
- Figma temelli UI uygulaması  
- Custom UI bileşenleri ve Stack mimarisi

---

## ▶️ Başlatmak için

```bash
git clone https://github.com/kullanici-adin/flutter-dashboard-case-study.git
cd flutter-dashboard-case-study
flutter pub get
flutter run

