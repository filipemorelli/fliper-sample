# Fliper

## Execution instruction

1. Git clone this project.
2. Follow the conventional build steps for Flutter
``
flutter pub get
``
``
flutter pub run build_runner build
``
``
flutter run
``


## General observations

- State management used was Mobx (but could use any other such as: Provider, Bloc, Streams, Cubit, State Notifier, Get)
- Integration with hasura I used the hasura_connect package, but I could have used graphql.
- Unfortunately the font is not available for free to download so I did not use the correct Adobe XD font.
- I implemented internationalization, being enabled for Portuguese and English, if you want to test it manually, just put the locale manually in `app_widget.dart`.
- I realized that the API return is a `list` so I decided to use creativity and use resources like` ListView` with `RefreshIndicator`, since centralizing is very simple, just use the` Center` or` Container` or` Column` widget for example, but of course I only did it because it is a test.