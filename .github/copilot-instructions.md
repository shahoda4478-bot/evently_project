# Copilot instructions for evently_project

These notes help an AI coding agent become productive quickly in this repository.
Keep guidance concise, concrete and focused on discoverable patterns.

1. Project type & entrypoint
   - Flutter app. Main entry: `lib/main.dart` (MaterialApp). Routes and theme are wired here.
   - The project centralizes app-level constants in `lib/common/app_assets.dart` (routes, asset names) and expects a theme class `AppTheme` (referenced in `main.dart`).

2. Big-picture architecture
   - Single-app UI: screens live under `lib/screens/` (example: `lib/screens/HomeScreen.dart`).
   - Assets are declared in `pubspec.yaml` under `flutter.assets` (currently `assets/image`).
   - Platform folders (android/, ios/, linux/, windows/, macos/) contain native scaffolding and generated plugin registrants.

3. Important inconsistencies to be careful about
   - `lib/main.dart` references `AppAssets.HomeScreens` and `AppTheme`, but `lib/common/app_assets.dart` and `AppTheme` implementations are incomplete/missing. Inspect before making changes.
   - `lib/screens/HomeScreen.dart` defines `class HomeScreens extends StatelessWidget` (plural) but `main.dart` maps the route to `HomeScreen` (singular). Resolve naming mismatches rather than guessing replacements.

4. Concrete examples and files to consult
   - Routes / entry: `lib/main.dart` — initialRoute and routes map.
   - Route constants & asset keys: `lib/common/app_assets.dart` — currently a stub; agents can add route constants here only with user confirmation.
   - Primary UI: `lib/screens/HomeScreen.dart` — current file contains a `Placeholder` widget; use as the starting point for UI work.
   - Dependencies & assets: `pubspec.yaml` — run `flutter pub get` after edits.

5. Build / run / test (developer workflows)
   - Fetch deps: `flutter pub get` (run in workspace root).
   - Run app (device-dependent):
     - Windows desktop: `flutter run -d windows`
     - Android emulator/device: `flutter run -d android`
     - iOS (mac required): `flutter run -d ios`
   - Build artifacts:
     - Android APK: `flutter build apk`
     - iOS: `flutter build ios` (mac required)
   - Tests: `flutter test` (there is a `test/widget_test.dart`).
   - Use the provided Gradle wrappers for native builds (`gradlew` / `gradlew.bat`).

6. Project-specific conventions
   - Centralize route names and static asset keys in `lib/common/app_assets.dart` (this file is expected to exist/be used widely). Follow existing naming patterns (PascalCase constants like `HomeScreens`).
   - Screens live under `lib/screens/`. Keep one public widget class per file named according to the filename (e.g., `HomeScreen` in `HomeScreen.dart`). If the repo has mismatches, prefer making minimal, explicit renames and add TODO comments linking to this instruction file.

7. Integration points & external dependencies
   - Minimal external packages today (see `pubspec.yaml`).
   - Native plugin hooks exist (generated registrant files in platform folders). If adding plugins, update `pubspec.yaml` and run `flutter pub get` and then a platform build to regenerate plugin registrant code.

8. Agent behavior rules (practical, repo-specific)
   - Do not invent or remove public APIs without user confirmation. If a symbol is missing (e.g., `AppTheme`), report a short summary and propose a minimal stub.
   - When fixing issues (for instance renaming `HomeScreens` → `HomeScreen`), update all usages (`main.dart`, tests) in the same change and run `flutter test` and `flutter analyze` if available.
   - Prefer edits that keep the app runnable: run `flutter pub get` then `flutter run` (or `flutter test`) to validate changes.

9. When you can't find expected code
   - If `AppTheme` or route constants are missing, add a tiny, clearly-marked stub in the same directory and annotate with a TODO linking back to this file so a maintainer can replace it later.

10. Where to look next when adding features
   - UI: `lib/screens/` and `lib/common/app_assets.dart` for route wiring.
   - Styles/themes: search for `AppTheme` references and put theme code in a new `lib/common/app_theme.dart` if approved.

If any instruction above is unclear or you'd like stricter conventions (naming, where to keep routes/themes), tell me which rules to enforce and I'll update this file.
