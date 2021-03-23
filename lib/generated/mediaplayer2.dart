// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object ./lib/generated/org.mpris.MediaPlayer2.xml

import 'package:dbus/dbus.dart';

class MediaPlayer2 extends DBusRemoteObject {
  MediaPlayer2(DBusClient client, String destination,
      {DBusObjectPath path =
          const DBusObjectPath.unchecked('/org/mpris/MediaPlayer2')})
      : super(client, destination, path);

  /// Gets org.mpris.MediaPlayer2.CanQuit
  Future<bool> getCanQuit() async {
    var value = await getProperty('org.mpris.MediaPlayer2', 'CanQuit');
    return (value as DBusBoolean).value;
  }

  /// Gets org.mpris.MediaPlayer2.Fullscreen
  Future<bool> getFullscreen() async {
    var value = await getProperty('org.mpris.MediaPlayer2', 'Fullscreen');
    return (value as DBusBoolean).value;
  }

  /// Sets org.mpris.MediaPlayer2.Fullscreen
  Future<void> setFullscreen(bool value) async {
    await setProperty(
        'org.mpris.MediaPlayer2', 'Fullscreen', DBusBoolean(value));
  }

  /// Gets org.mpris.MediaPlayer2.CanSetFullscreen
  Future<bool> getCanSetFullscreen() async {
    var value = await getProperty('org.mpris.MediaPlayer2', 'CanSetFullscreen');
    return (value as DBusBoolean).value;
  }

  /// Gets org.mpris.MediaPlayer2.CanRaise
  Future<bool> getCanRaise() async {
    var value = await getProperty('org.mpris.MediaPlayer2', 'CanRaise');
    return (value as DBusBoolean).value;
  }

  /// Gets org.mpris.MediaPlayer2.HasTrackList
  Future<bool> getHasTrackList() async {
    var value = await getProperty('org.mpris.MediaPlayer2', 'HasTrackList');
    return (value as DBusBoolean).value;
  }

  /// Gets org.mpris.MediaPlayer2.Identity
  Future<String> getIdentity() async {
    var value = await getProperty('org.mpris.MediaPlayer2', 'Identity');
    return (value as DBusString).value;
  }

  /// Gets org.mpris.MediaPlayer2.DesktopEntry
  Future<String> getDesktopEntry() async {
    var value = await getProperty('org.mpris.MediaPlayer2', 'DesktopEntry');
    return (value as DBusString).value;
  }

  /// Gets org.mpris.MediaPlayer2.SupportedUriSchemes
  Future<List<String>> getSupportedUriSchemes() async {
    var value =
        await getProperty('org.mpris.MediaPlayer2', 'SupportedUriSchemes');
    return (value as DBusArray)
        .children
        .map((child) => (child as DBusString).value)
        .toList();
  }

  /// Gets org.mpris.MediaPlayer2.SupportedMimeTypes
  Future<List<String>> getSupportedMimeTypes() async {
    var value =
        await getProperty('org.mpris.MediaPlayer2', 'SupportedMimeTypes');
    return (value as DBusArray)
        .children
        .map((child) => (child as DBusString).value)
        .toList();
  }

  /// Invokes org.mpris.MediaPlayer2.Raise()
  Future callRaise() async {
    await callMethod('org.mpris.MediaPlayer2', 'Raise', []);
  }

  /// Invokes org.mpris.MediaPlayer2.Quit()
  Future callQuit() async {
    await callMethod('org.mpris.MediaPlayer2', 'Quit', []);
  }
}
