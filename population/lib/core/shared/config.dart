

class Config {
  /// Server's IP:PORT
  static const String populationAddress = 'countriesnow.space/api/v0.1/countries';
  static const String authAddress = 'auth-ms.lovester.tech';
  static const String profileAddress = 'user-ms.lovester.tech';

  /// Server's URL
   static String getUrl(String address) => 'https://$address';


}
