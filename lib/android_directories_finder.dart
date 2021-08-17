import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

class AndroidDirectoriesFinder {
  static const MethodChannel _channel = MethodChannel('android_directories_finder');

  // static const DIRECTORY_MUSIC = "Music";

  // static const DIRECTORY_PODCASTS = "Podcasts";

  // static const DIRECTORY_RINGTONES = "Ringtones";

  // static const DIRECTORY_ALARMS = "Alarms";

  // static const DIRECTORY_NOTIFICATIONS = "Notifications";

  // static const DIRECTORY_PICTURES = "Pictures";

  // static const DIRECTORY_MOVIES = "Movies";

  // static const DIRECTORY_DOWNLOADS = "Download";

  // static const DIRECTORY_DCIM = "DCIM";

  // static const DIRECTORY_DOCUMENTS = "Documents";

  // static const DIRECTORY_SCREENSHOTS = "Screenshots";

  // static const DIRECTORY_AUDIOBOOKS = "Audiobooks";

  // static Future<String> getExternalStorageDirectory() async {
  //   if (!Platform.isAndroid) {
  //     throw UnsupportedError("Platform not supported. This plugin is for android only");
  //   }
  //   return await _channel.invokeMethod('getExternalStorageDirectory');
  // }

  static Future<String> getDownloadsDirectory() async {
    if (!Platform.isAndroid) {
      throw UnsupportedError("Only android supported");
    }
    return await _channel.invokeMethod('getDownloadsDirectory');
  }
}
