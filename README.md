# Firebase Auth App

A Flutter application with Firebase authentication using Clean Architecture and Riverpod for state management.

## Features

- ✅ Email/Password Sign Up
- ✅ Email/Password Sign In
- ✅ Auto-login persistence (remembers logged-in users)
- ✅ Home screen with user email display
- ✅ Logout functionality
- ✅ Clean Architecture pattern
- ✅ Reusable widgets
- ✅ Riverpod state management

## Project Structure

```
lib/
├── core/
│   ├── constants/
│   │   └── app_constants.dart
│   └── utils/
│       └── validators.dart
├── data/
│   ├── datasources/
│   │   └── auth_remote_datasource.dart
│   └── repositories/
│       └── auth_repository_impl.dart
├── domain/
│   └── repositories/
│       └── auth_repository.dart
├── presentation/
│   ├── providers/
│   │   └── auth_provider.dart
│   ├── screens/
│   │   ├── auth/
│   │   │   ├── login_screen.dart
│   │   │   └── signup_screen.dart
│   │   ├── home/
│   │   │   └── home_screen.dart
│   │   └── splash/
│   │       └── splash_screen.dart
│   └── widgets/
│       └── reusable/
│           ├── custom_button.dart
│           └── custom_text_field.dart
└── main.dart
```

## Setup Instructions

1. **Install Flutter dependencies:**
   ```bash
   cd firebase_auth_app
   flutter pub get
   ```

2. **Firebase Setup:**
    - Create a new Firebase project at [Firebase Console](https://console.firebase.google.com/)
    - Add Android/iOS apps to your Firebase project
    - Download `google-services.json` (Android) and `GoogleService-Info.plist` (iOS)
    - Place them in the appropriate directories:
        - Android: `android/app/google-services.json`
        - iOS: `ios/Runner/GoogleService-Info.plist`
    - Enable Email/Password authentication in Firebase Console:
        - Go to Authentication > Sign-in method
        - Enable Email/Password provider

3. **Run the app:**
   ```bash
   flutter run
   ```

## Architecture

### Clean Architecture Layers

1. **Domain Layer**: Contains business logic and repository interfaces
2. **Data Layer**: Implements data sources and repositories
3. **Presentation Layer**: Contains UI, widgets, and state management

### State Management

- Uses **Riverpod** for state management
- `authStateProvider`: Streams authentication state changes
- `authControllerProvider`: Handles authentication actions (sign in, sign up, sign out)

### Reusable Widgets

- `CustomTextField`: Reusable text input field with validation
- `CustomButton`: Reusable button with loading state

## Usage

1. **Sign Up**: Create a new account with email and password
2. **Sign In**: Login with existing credentials
3. **Auto-login**: App automatically navigates to home screen if user is already logged in
4. **Logout**: Sign out from the home screen

## Dependencies

- `firebase_core`: Firebase core functionality
- `firebase_auth`: Firebase authentication
- `flutter_riverpod`: State management
