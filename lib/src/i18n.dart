abstract class LocaleCodeAware {

  LocaleCodeAware(this.localeCode);

  final String localeCode;
}

mixin LocalizationsProvider on LocaleCodeAware {

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'homepage_title': 'Flutter Demo Home Page',
      'counter_text': 'You have pushed the button this many times:',
    },
  };

  String get homepageTitle =>
    _localizedValues[localeCode]['homepage_title'];

  String get counterText =>
    _localizedValues[localeCode]['counter_text'];
}