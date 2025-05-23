# 🎵 S-Rocks Music - Flutter Developer Assignment

A sleek Flutter application created for the **S-Rocks Music** developer assignment. This app demonstrates state management, Firestore integration, and modern UI principles using Flutter.

---

## 📁 Project Structure

```

lib/
├── Models/
│   └── service\_model.dart         # Data model for services
├── screens/
│   ├── home.dart                  # Home screen with service cards
│   └── card\_detail.dart          # Screen shown on tapping a service
├── service/
│   └── home\_service.dart         # Firestore service to fetch data
├── utils/
│   ├── bottom\_navigation\_bar.dart # Custom bottom navigation bar
│   ├── Widget.dart                # Reusable ServiceCard widget
├── firebase\_options.dart          # Firebase setup file
└── main.dart                      # App entry point

````

---

## 🧩 Features

- 🎯 Clean layout with custom header and search bar
- 🎨 Animated bottom navigation bar with active semicircle indicator
- 🗂️ Firebase Firestore data fetching via `home_service.dart`
- ⚙️ State management using GetX
- 🔁 Navigation between Home and Detail pages
- ✅ Tap interactions on each service card

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/kshitijraj-06/s_rocks_music_assignment.git
cd s_rocks_music_assignment
````

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Firebase Setup

* Add your `google-services.json` in `android/app/`
* Add your `GoogleService-Info.plist` in `ios/Runner/`
* Replace `firebase_options.dart` if needed using the [FlutterFire CLI](https://firebase.flutter.dev/docs/cli/)

### 4. Run the App

```bash
flutter run
```

---

## 📸 Preview

| Home Screen            | Card Navigation        | Bottom Bar             |
| ---------------------- | ---------------------- | ---------------------- |
| (Add screenshots here) | (Add screenshots here) | (Add screenshots here) |

---

## ✨ Packages Used

* [flutter](https://flutter.dev)
* [get](https://pub.dev/packages/get)
* [google\_fonts](https://pub.dev/packages/google_fonts)
* [cloud\_firestore](https://pub.dev/packages/cloud_firestore)
* [firebase\_core](https://pub.dev/packages/firebase_core)

---

## 🙋 Author

Developed by **Kshitij Raj**
📍 [GitHub](https://github.com/kshitijraj-06)

---

## 📄 License

Licensed under the MIT License.

```
