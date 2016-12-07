// use lib/firebase
@deprecated
class FirebaseOptions {
  String apiKey;
  String authDomain;
  String databaseURL;
  String storageBucket;
  String name;

  FirebaseOptions(
      {this.apiKey,
      this.authDomain,
      this.databaseURL,
      this.storageBucket,
      this.name});
}
