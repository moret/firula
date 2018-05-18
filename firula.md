<!-- $theme: default -->

# TT Flautinha

- E o Flutter, você já viu?
- Morreu o React Native?

---

###### Disclaimers

---

# E porque o Flutter?

---

### Javascript
![](https://cdn-images-1.medium.com/max/600/1*8ugYUcmOYnoDx7d99qkEjQ.png)
### Dart
![](https://cdn-images-1.medium.com/max/600/1*UpoHX3az39ZqkFwBr_gndA.png)

---

> The fact that Flutter is the only mobile SDK that provides reactive views without requiring a JavaScript bridge should be enough to make Flutter interesting and worth trying (...).

https://hackernoon.com/whats-revolutionary-about-flutter-946915b09514

---

# Instalação

## Binariozão da p...

Length: 650392357 (620M) [application/zip]

_Requer o brew para completar a instalação mas não tem opção do brew para se instalar..._ 🙄

---

```sh
flutter doctor
```

---

```sh
~/dev/flutter$ flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel beta, v0.3.2, on Mac OS X 10.13.4 17E199, locale en-GB)
[✓] Android toolchain - develop for Android devices (Android SDK 27.0.2)
[!] iOS toolchain - develop for iOS devices (Xcode 9.3)
    ✗ Missing Xcode dependency: Python module "six".
      Install via 'pip install six' or 'sudo easy_install six'.
    ✗ CocoaPods not installed.
        CocoaPods is used to retrieve the iOS platform side''s plugin code that responds to your plugin usage on the Dart side.
        Without resolving iOS dependencies with CocoaPods, plugins will not work on iOS.
        For more info, see https://flutter.io/platform-plugins
      To install:
        brew install cocoapods
        pod setup
[✓] Android Studio (version 3.0)
    ✗ Flutter plugin not installed; this adds Flutter specific functionality.
    ✗ Dart plugin not installed; this adds Dart specific functionality.
[!] VS Code (version 1.23.1)
[✓] Connected devices (1 available)

! Doctor found issues in 2 categories.
```

---

```sh
flutter create firula
```

---

### _To the code..._

---

> FAQ request: why is the build() method on State, and not StatefulWidget ?

https://github.com/flutter/flutter/issues/8794

---

Cola webview:

https://pub.dartlang.org/packages/flutter_webview_plugin

https://www.youtube.com/watch?v=SiMHTK15Pik

---

> Still you can't embed this inside another flutter widget. Dealbreaker for me 🙁

https://twitter.com/sathis_m/status/877966388328972288

---

![](https://cdn.pixabay.com/photo/2016/08/02/17/29/gull-1564281_960_720.jpg)
