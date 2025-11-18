import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';


class LinksHelper {
  static Future<void> abrirEmail(String email) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      debugPrint('No se pudo lanzar $email');
    }
  }

 
  static Future<void> abrirUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('No se pudo lanzar $url');
    }
  }
}