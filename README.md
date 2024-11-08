# Firebase Auth Demo App

This is a demo Flutter app showcasing a basic implementation of Firebase Authentication for user login and registration. It allows users to create accounts, log in, and log out using Firebase Auth.

## Features

- User registration with full name, email and password
- User login with email and password
- Greets users on home page with full name
- Firebase integration for secure user authentication

## Getting Started

### Prerequisites

1. **Flutter SDK**: Install the latest version of Flutter. Follow the instructions [here](https://flutter.dev/docs/get-started/install).
2. **Firebase Project**: Set up a Firebase project and enable Firebase Authentication.

### Firebase Setup

1. **Create a Firebase Project**:
   - Go to the [Firebase Console](https://console.firebase.google.com/) and create a new project.
   
2. **Configure Firebase in Flutter app**:
   - Initialize firebase and add it to the project.
   - Follow the steps to setup firebase in the project [Firebase Setup](https://firebase.google.com/docs/flutter/setup?platform=ios).

4. **Enable Authentication**:
   - In the Firebase Console, go to **Build** -> **Authentication** -> **Sign-in Method**.
   - Enable **Email/Password** as the sign-in provider.

### Running the App

1. Clone this repository:

   ```bash
   git clone https://github.com/sint18/flutter-authentication-demo.git
   cd flutter-authentication-demo
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Run the app:

   ```bash
   flutter run
   ```

## Folder Structure

- **lib/**: Contains the main Flutter code including login screen and register screen.

## Usage

1. Open the app.
2. Register a new account using your email and password.
3. Log in with the registered credentials.
4. Use the logout button to sign out.

## Dependencies

- **firebase_auth**: Firebase authentication for Flutter
- **firebase_core**: Core Firebase SDK for Flutter

Install dependencies in `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  firebase_core: latest_version
  firebase_auth: latest_version
```

## Author

Sint
