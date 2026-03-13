# FarmerEats

A Flutter application that connects farmers directly with consumers, enabling them to sell fresh farm products while reducing the carbon footprint of the global supply chain.

## Features

- **User Authentication**: Secure login and signup with email/password and OTP verification
- **Farm Registration**: Farmers can register their farms with detailed information
- **Document Verification**: Upload proof of agricultural registrations (USDA Organic, Florida Fresh, etc.)
- **Business Hours**: Set operating hours for farm pickup/delivery
- **Password Recovery**: Forgot password functionality with email reset
- **Onboarding**: Interactive onboarding experience highlighting quality, convenience, and local benefits

## Screenshots

*Add screenshots of your app here*

## Getting Started

### Prerequisites

- Flutter SDK (^3.10.4)
- Dart SDK
- Android Studio or VS Code with Flutter extensions
- Firebase project (for authentication and data storage)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/farmer-eats.git
   cd farmer-eats
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Configure Firebase:
   - Create a Firebase project at https://console.firebase.google.com/
   - Enable Authentication, Firestore, and Storage
   - Download `google-services.json` for Android and place it in `android/app/`
   - Configure Firebase options in `lib/firebase_options.dart`

4. Run the app:
   ```bash
   flutter run
   ```

### Building for Production

#### Android APK
```bash
flutter build apk --release
```

#### iOS
```bash
flutter build ios --release
```

#### Web
```bash
flutter build web --release
```

## Project Structure

```
lib/
├── main.dart                    # App entry point
├── firebase_options.dart        # Firebase configuration
├── onboarding_screen.dart       # Welcome screens
├── login_screen.dart            # User login
├── signup_screen.dart           # User registration
├── otp_screen.dart              # OTP verification
├── forget_password.dart         # Password recovery
├── reset_password_screen.dart   # Password reset
├── Farm_Info_screen.dart        # Farm details input
├── Verification_screen.dart     # Document upload
├── signup_hours_screen.dart     # Business hours setup
└── utils/
    └── constant.dart            # App constants and colors
```

## Technologies Used

- **Flutter**: Cross-platform UI framework
- **Dart**: Programming language
- **Firebase**:
  - Authentication: User management
  - Firestore: Data storage
  - Storage: File uploads
- **File Picker**: Document selection
- **Flutter SVG**: Vector graphics support

## Supported Platforms

- Android
- iOS
- Web
- Windows
- Linux
- macOS

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For questions or support, please contact the development team.
