import 'package:url_launcher/url_launcher.dart';
import 'package:open_file/open_file.dart';

class LauncherUtil {
  static Future<void> abrirURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'No se pudo abrir $url';
    }
  }

  static Future<void> abrirGoogle() async {
    await abrirURL('https://www.google.com');
  }

  static Future<void> abrirSpotify() async {
    await abrirURL('https://open.spotify.com/playlist/4ifJjrzmSBqM9GqQcVICCZ');
  }
  static Future<void> abrirArchivo(String path) async {
    final result = await OpenFile.open(path);
  }
  static Future<void> chistes() async {
    await abrirURL('https://es.memedroid.com/memes/top/day');
  }
  static Future<void> consejos() async {
    await abrirURL('https://www.psicoactiva.com/blog/cuando-estas-triste/');
  }
}
