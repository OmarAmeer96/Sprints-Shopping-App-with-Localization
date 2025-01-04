# Sprints Shopping App with Localization

Welcome to **Sprints Shopping App with Localization**, a Flutter project designed to showcase a simple yet elegant grocery shopping app. This project demonstrates the use of various Flutter widgets and packages to create a visually appealing and functional user interface.

### App Demo Video 🎥

[Watch the localization demo video here]()

## Screenshots (English)

| Splash                                                                                       | Signin                                                                                       | Signup                                                                                       | Home                                                                                         | Adding to Cart                                                                               |
| -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| <img src="https://github.com/user-attachments/assets/27ad281a-4d6b-4d93-8401-52f19159fc90"/> | <img src="https://github.com/user-attachments/assets/d2a658b2-0159-4c3c-9b1a-235c70a9a4f1"/> | <img src="https://github.com/user-attachments/assets/2a514191-61d7-45d4-80b6-58cf923e0bed"/> | <img src="https://github.com/user-attachments/assets/872ef61c-0d43-4220-9230-14aef670e55b"/> | <img src="https://github.com/user-attachments/assets/c5b12af0-dad4-4559-ba96-9d4bb1339545"/> |

## Screenshots (Arabic)

| Splash                                                                                       | Signin                                                                                       | Signup                                                                                       | Home                                                                                         | Adding to Cart                                                                               |
| -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| <img src="https://github.com/user-attachments/assets/27ad281a-4d6b-4d93-8401-52f19159fc90"/> | <img src="https://github.com/user-attachments/assets/d2a658b2-0159-4c3c-9b1a-235c70a9a4f1"/> | <img src="https://github.com/user-attachments/assets/2a514191-61d7-45d4-80b6-58cf923e0bed"/> | <img src="https://github.com/user-attachments/assets/872ef61c-0d43-4220-9230-14aef670e55b"/> | <img src="https://github.com/user-attachments/assets/c5b12af0-dad4-4559-ba96-9d4bb1339545"/> |

## Features

- **Home Banner**: A carousel slider displaying promotional images.
- **Best Selling Section**: A grid view showcasing the best-selling products.
- **Hot Offers Section**: A horizontally scrollable list view displaying hot offers with images and text.

## Localization

This project supports localization for English and Arabic languages. The localization is implemented using the `intl` package.

### Adding a New Language

To add a new language, follow these steps:

1. Create a new ARB file in the `l10n` directory (e.g., `intl_ar.arb` for Arabic).
2. Add the translations for the new language in the ARB file.
3. Update the `supportedLocales` in the `main.dart` file to include the new language.
4. Run the build command to generate the localization files:
   ```sh
   Flutter Intl: initialize
   ```

### Toggling Languages

The app includes a language toggle button in the home screen app bar. When the button is pressed, the app toggles between English and Arabic.

#### Example Code for Toggling Languages

In the `Home` app bar:
```dart
IconButton(
  onPressed: () {
    context.read<LanguageCubit>().toggleLanguage();
  },
  icon: SvgPicture.asset(
    SvgAssets.homeLangIcon,
    width: 35,
  ),
),
```

In the `LanguageCubit`:
```dart
class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(const Locale('en')) {
    _loadCurrentLocale();
  }

  void _loadCurrentLocale() async {
    String? currentLocale =
        await SharedPrefHelper.getString(SharedPrefKeys.currentLocale);
    if (currentLocale != null) {
      emit(Locale(currentLocale));
    }
  }

  void toggleLanguage() async {
    if (state.languageCode == 'en') {
      await saveCurrentLocale("ar");
      emit(const Locale('ar'));
    } else {
      await saveCurrentLocale("en");
      emit(const Locale('en'));
    }
  }

  Future<dynamic> saveCurrentLocale(String locale) async =>
      await SharedPrefHelper.setData(SharedPrefKeys.currentLocale, locale);
}
```

## Packages Used

- **[cached_network_image](https://pub.dev/packages/cached_network_image)**: For efficient image loading and caching.
- **[another_flushbar](https://pub.dev/packages/another_flushbar)**: For displaying beautiful and customizable in-app notifications.
- **[flutter_bloc](https://pub.dev/packages/flutter_bloc)**: For state management using the BLoC pattern.
- **[flutter_screenutil](https://pub.dev/packages/flutter_screenutil)**: For adapting screen and font size to different screen sizes.
- **[flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage)**: For storing data securely.
- **[firebase_core](https://pub.dev/packages/firebase_core)**: For Firebase core functionalities.
- **[lottie](https://pub.dev/packages/lottie)**: For Lottie animations.
- **[cupertino_icons](https://pub.dev/packages/cupertino_icons)**: For iOS style icons.
- **[dio](https://pub.dev/packages/dio)**: For networking.
- **[retrofit](https://pub.dev/packages/retrofit)**: For type-safe HTTP client.
- **[pretty_dio_logger](https://pub.dev/packages/pretty_dio_logger)**: For logging network requests.
- **[shared_preferences](https://pub.dev/packages/shared_preferences)**: For local storage.
- **[flutter_native_splash](https://pub.dev/packages/flutter_native_splash)**: For splash screen.
- **[flutter_svg](https://pub.dev/packages/flutter_svg)**: For SVG support.
- **[json_serializable](https://pub.dev/packages/json_serializable)**: For JSON serialization.
- **[json_annotation](https://pub.dev/packages/json_annotation)**: For JSON annotations.
- **[get_it](https://pub.dev/packages/get_it)**: For dependency injection.
- **[freezed](https://pub.dev/packages/freezed)**: For code generation.
- **[freezed_annotation](https://pub.dev/packages/freezed_annotation)**: For annotations used with Freezed.
- **[page_transition](https://pub.dev/packages/page_transition)**: For page transition animations.
- **[intl](https://pub.dev/packages/intl)**: For internationalization and localization.

## Getting Started

To get started with this project, follow these steps:

1. **Clone the repository**:
   ```sh
   git clone https://github.com/OmarAmeer96/Sprints-Shopping-App-with-Animation.git
   ```
2. **Navigate to the project directory**:
   ```sh
   cd Sprints-Shopping-App
   ```
3. **Install dependencies**:
   ```sh
   flutter pub get
   ```
4. **Run the app**:
   ```sh
   flutter run
   ```

## Project Structure

- **lib/main.dart**: The entry point of the application.
- **lib/features/home/ui.dart**: The home screen of the application.
- **lib/features/home/logic/**: Contains the BLoC logic for the home screen.
- **lib/features/home/data.dart**: Contains the data models and repos for the home screen.
- **lib/features/signin/ui.dart**: The sign-in screen of the application.
- **lib/features/signin/logic/**: Contains the BLoC logic for the sign-in screen.
- **lib/features/signin/data.dart**: Contains the data models and repos for the sign-in screen.
- **lib/features/signup/ui.dart**: The sign-up screen of the application.
- **lib/features/signup/logic/**: Contains the BLoC logic for the sign-up screen.
- **lib/features/signup/data.dart**: Contains the data models and repos for the sign-up screen.
