import 'package:dev_test/package.dart';

Future main() async {
  await packageRunCi('.',
      options: PackageRunCiOptions(noBuild: true, noOverride: true));
}
