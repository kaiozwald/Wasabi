class SocialMediaHelper {
  // void launchPhoneCall(String phoneNumber) async {
  //   final url = 'tel:$phoneNumber';

  //   // ignore: deprecated_member_use
  //   if (await canLaunch(url)) {
  //     // ignore: deprecated_member_use
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  // void openStore(String? packageName, String? appId) async {
  //   if (Platform.isIOS) {
  //     _openAppStore(appId);
  //   } else if (Platform.isAndroid) {
  //     _openGooglePlayStore(packageName);
  //   } else {
  //     if (kDebugMode) {
  //       print("Platform not supported for store linking");
  //     }
  //   }
  // }

  // void _openGooglePlayStore(String? packageName) async {
  //   String url = 'https://play.google.com/store/apps/details?id=$packageName';
  //   final Uri uri = Uri.parse(url);
  //   if (await canLaunchUrl(uri)) {
  //     await launchUrl(uri, mode: LaunchMode.externalApplication);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  // void _openAppStore(String? appId) async {
  //   String url = 'https://apps.apple.com/app/$appId';
  //   final Uri uri = Uri.parse(url);
  //   if (await canLaunchUrl(uri)) {
  //     await launchUrl(uri, mode: LaunchMode.externalApplication);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
}
