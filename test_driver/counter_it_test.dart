import 'package:flutter_driver/flutter_driver.dart';
import 'package:i18n_for_it_testig/src/keys.dart';
import 'package:test/test.dart';

import 'localization.dart';

void main() {
  group('COUNT TEST', () {

    FlutterDriver driver;
    TestLocalization localization;

    setUp(() async {
      driver = await FlutterDriver.connect();

      localization = TestLocalization('en');
    });

    tearDown(() async {
      if(driver!=null) {
        driver.close();
      }
    });

    test('Tap on + should increment the counter', () async {
      await driver.waitFor(find.text(localization.counterText));
      await driver.waitFor(find.text('0'));

      await driver.tap(find.byValueKey(AppKeys.incrementCounterButton));

      await driver.waitFor(find.text(localization.counterText));
      await driver.waitFor(find.text('1'));
    });

  });
}