# l10n Package for Flutter Internationalization

This l10n package serves as the foundation for supporting multiple languages in our Flutter app, utilizing the power of `slang`, `slang_flutter`, and `slang_generator` to create a flexible and scalable internationalization solution.

## Getting Started

Our package comes pre-configured with two locales: Indonesian (`id`) and English (`en`). This section will guide you through adding additional locales and organizing translations using namespaces.

### Directory Structure

Translations are organized in the `json` directory, utilizing namespaces to separate translations by context or feature. Each namespace corresponds to a folder containing locale-specific files.

```plaintext
.
└── json/
    ├── feedback/
    │   ├── errors_id.i18n.json
    │   └── errors.i18n.json // Default en locale
    └── home/
        ├── home_id.i18n.json
        └── home.i18n.json
```

### Adding a New Locale

To add a new locale, create a new `.i18n.json` file within the appropriate namespace directory, following the naming convention `_.i18n.json`.

For example, to add an Indonesian version of the home namespace:

```plaintext
home_id.i18n.json
```

### Generating Translations

After adding or updating your translation files, generate the Flutter code to use these translations by running:

```sh
melos generate-locale
```

This command updates your app with the latest translations, making them available for use.

### Using Translations

With the generated code, you can access your translations in a type-safe manner. For instance, to use an error message:

```dart
context.l10n.error.notFound.title
```

This approach ensures that you can easily manage and use translations throughout your app, improving the overall maintainability and scalability of your internationalization solution.

### Adding More Information

For more detailed instructions and advanced usage, refer to the official documentation of `slang`. It provides extensive guidance on features like pluralization, context-specific translations, and more, helping you leverage the full power of the library.

## Conclusion

The l10n package simplifies the process of adding and managing translations in your Flutter app. By organizing translations with namespaces and supporting easy generation of locale-specific files, your app can efficiently support multiple languages, enhancing its global reach and accessibility.

For a deep dive into the capabilities of `slang` and to explore more advanced features, check out the [slang documentation](https://pub.dev/packages/slang).
