// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object ./lib/generated/org.mpris.MediaPlayer2.xml

import 'package:dbus/dbus.dart';

class MediaPlayer2 extends DBusRemoteObject {
  MediaPlayer2(DBusClient client, String destination,
      {DBusObjectPath path =
          const DBusObjectPath.unchecked('/org/mpris/MediaPlayer2')})
      : super(client, name: destination, path: path);

  /// Gets org.mpris.MediaPlayer2.CanQuit
  Future<bool> getCanQuit() async {
    var value = await getProperty('org.mpris.MediaPlayer2', 'CanQuit',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Gets org.mpris.MediaPlayer2.Fullscreen
  Future<bool> getFullscreen() async {
    var value = await getProperty('org.mpris.MediaPlayer2', 'Fullscreen',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Sets org.mpris.MediaPlayer2.Fullscreen
  Future<void> setFullscreen(bool value) async {
    await setProperty(
        'org.mpris.MediaPlayer2', 'Fullscreen', DBusBoolean(value));
  }

  /// Gets org.mpris.MediaPlayer2.CanSetFullscreen
  Future<bool> getCanSetFullscreen() async {
    var value = await getProperty('org.mpris.MediaPlayer2', 'CanSetFullscreen',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Gets org.mpris.MediaPlayer2.CanRaise
  Future<bool> getCanRaise() async {
    var value = await getProperty('org.mpris.MediaPlayer2', 'CanRaise',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Gets org.mpris.MediaPlayer2.HasTrackList
  Future<bool> getHasTrackList() async {
    var value = await getProperty('org.mpris.MediaPlayer2', 'HasTrackList',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Gets org.mpris.MediaPlayer2.Identity
  Future<String> getIdentity() async {
    var value = await getProperty('org.mpris.MediaPlayer2', 'Identity',
        signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.mpris.MediaPlayer2.DesktopEntry
  Future<String> getDesktopEntry() async {
    var value = await getProperty('org.mpris.MediaPlayer2', 'DesktopEntry',
        signature: DBusSignature('s'));
    return value.asString();
  }

  /// Gets org.mpris.MediaPlayer2.SupportedUriSchemes
  Future<List<String>> getSupportedUriSchemes() async {
    var value = await getProperty(
        'org.mpris.MediaPlayer2', 'SupportedUriSchemes',
        signature: DBusSignature('as'));
    return value.asStringArray().toList();
  }

  /// Gets org.mpris.MediaPlayer2.SupportedMimeTypes
  Future<List<String>> getSupportedMimeTypes() async {
    var value = await getProperty(
        'org.mpris.MediaPlayer2', 'SupportedMimeTypes',
        signature: DBusSignature('as'));
    return value.asStringArray().toList();
  }

  /// Invokes org.mpris.MediaPlayer2.Raise()
  Future<void> callRaise(
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.mpris.MediaPlayer2', 'Raise', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.mpris.MediaPlayer2.Quit()
  Future<void> callQuit(
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.mpris.MediaPlayer2', 'Quit', [],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }
}
