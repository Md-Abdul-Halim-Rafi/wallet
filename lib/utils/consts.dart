class Constants {

  // Common
  static const String projectId = String.fromEnvironment("PROJECT_ID");
  static const String storageBucket = String.fromEnvironment("STORAGE_BUCKET");
  static const String messagingSenderID = String.fromEnvironment("MESSAGING_SENDER_ID");

  // Android
  static const String androidApiKey = String.fromEnvironment("ANDROID_API_KEY");
  static const String androidAppID = String.fromEnvironment("ANDROID_APP_ID");

  // iOS
  static const String iosApiKey = String.fromEnvironment("IOS_API_KEY");
  static const String iosAppID = String.fromEnvironment("IOS_APP_ID");
  static const String iosClientID = String.fromEnvironment("IOS_CLIENT_ID");
  static const String iosBundleID = String.fromEnvironment("IOS_BUNDLE_ID");
}