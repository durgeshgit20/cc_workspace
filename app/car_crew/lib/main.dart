import 'package:config/config.dart';
import 'package:l10n/l10n.dart';
import 'package:car_crew/app.dart';
import 'package:car_crew/bootstrap.dart';

void main() => bootstrap(
      () async {
        Flavor.status = FlavorStatus.production;

        return TranslationProvider(
          child: const App(),
        );
      },
    );
