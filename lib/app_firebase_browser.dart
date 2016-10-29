import 'app_firebase.dart';
import 'package:firebase3/firebase.dart' as firebase;

firebase.App initializeApp(FirebaseOptions options) {
  return firebase.initializeApp(
      apiKey: options.apiKey,
      authDomain: options.authDomain,
      databaseURL: options.databaseURL,
      storageBucket: options.storageBucket,
      name: options.name);
}
