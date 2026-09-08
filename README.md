# 📱 Login Dashboard App

Login Dashboard App è una semplice applicazione Flutter sviluppata come **progetto di apprendimento** per consolidare concetti fondamentali dello sviluppo mobile e web con Flutter.  
L’app utilizza una struttura modulare, routing moderno con **GoRouter**, tema globale **Material 3**, componenti riutilizzabili e import professionali tramite alias `package:`.

Il progetto rappresenta la mia **seconda app Flutter**, realizzata per migliorare la padronanza del framework e costruire un portfolio tecnico solido.

========================================================================

## 🚀 Installazione dell’ambiente Flutter

### 1. Installazione Flutter SDK
Scaricare Flutter (versione *stable*) dal sito ufficiale:  
https://docs.flutter.dev/get-started/install

Estrarre lo zip in una cartella dedicata, ad esempio:

C:\src\flutter


# Aggiungere Flutter al PATH:

C:\src\flutter\bin


Verifica installazione:

```bash
flutter doctor
```
===========================================================================

## 📱 Installazione Android Studio (per emulatori)
Installare Android Studio e configurare:

Android SDK

Platform Tools

Emulator

Build Tools

Creare un dispositivo virtuale (Pixel 6 – Android 13/14).
===========================================================================

## 🧩 Configurazione VS Code
Estensioni consigliate:

• Flutter

• Dart

• Error Lens

• Material Icon Theme
============================================================================

## 🚀 Funzionalità principali

• Login con campi personalizzati

• Dashboard utente dopo autenticazione

• Schermata profilo

• Routing moderno con GoRouter

• Tema Material 3 (chiaro/scuro)

• Componenti riutilizzabili (TextField, Button)

• Architettura pulita e scalabile
=============================================================================

## 📁 Struttura del progetto
lib/
├── app.dart                 # Configurazione principale dell’app (MaterialApp.router)
├── main.dart                # Entry point dell’app
├── routes.dart              # Routing moderno con GoRouter

├── screens/                 # Schermate principali
│   ├── login_screen.dart    # Schermata di login
│   ├── dashboard_screen.dart# Dashboard utente
│   └── profile_screen.dart  # Schermata profilo

├── services/                # Logica applicativa
│   └── auth_service.dart    # Gestione autenticazione

├── themes/                  # Tema globale Material 3
│   └── app_theme.dart       # Colori, tipografia, stile

===============================================================================

## 🛣 Routing (GoRouter)
Le rotte sono definite in routes.dart:

• /login → LoginScreen

• /dashboard → DashboardScreen

• /profile → ProfileScreen

Collegate tramite:
```dart
MaterialApp.router(
  routerConfig: router,
  debugShowCheckedModeBanner: false,
);
```
================================================================================

## 📦 Import professionali
// Nota sugli import:
// In Flutter è preferibile usare gli import con 'package:login_dashboard_app/...'
// invece dei percorsi relativi come '../' o '../../'.
// 'login_dashboard_app' è l'alias del progetto e deriva dal campo 'name:'
// presente nel file pubspec.yaml.
// Questo approccio è più stabile, leggibile e professionale.

==================================================================================

## 🎯 Obiettivo del progetto
Questa applicazione rappresenta un progetto di apprendimento per:

- comprendere la struttura di un’app Flutter

- gestire routing e navigazione

- organizzare il codice in modo modulare

- utilizzare componenti riutilizzabili

- applicare un tema globale Material 3

- preparare un progetto reale da inserire nel portfolio GitHub

====================================================================================

## 👩‍💻 Autrice
Debora – Full‑stack developer in formazione