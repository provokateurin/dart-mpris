// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object ./lib/generated/org.mpris.MediaPlayer2.Playlists.xml

import 'package:dbus/dbus.dart';

/// Signal data for org.mpris.MediaPlayer2.Playlists.PlaylistChanged.
class MediaPlayer2PlaylistsPlaylistChanged extends DBusSignal {
  DBusStruct get Playlist => values[0].asStruct();

  MediaPlayer2PlaylistsPlaylistChanged(DBusSignal signal)
      : super(
            sender: signal.sender,
            path: signal.path,
            interface: signal.interface,
            name: signal.name,
            values: signal.values);
}

class MediaPlayer2Playlists extends DBusRemoteObject {
  /// Stream of org.mpris.MediaPlayer2.Playlists.PlaylistChanged signals.
  late final Stream<MediaPlayer2PlaylistsPlaylistChanged> playlistChanged;

  MediaPlayer2Playlists(DBusClient client, String destination,
      {DBusObjectPath path =
          const DBusObjectPath.unchecked('/org/mpris/MediaPlayer2')})
      : super(client, name: destination, path: path) {
    playlistChanged = DBusRemoteObjectSignalStream(
            object: this,
            interface: 'org.mpris.MediaPlayer2.Playlists',
            name: 'PlaylistChanged',
            signature: DBusSignature('(oss)'))
        .asBroadcastStream()
        .map((signal) => MediaPlayer2PlaylistsPlaylistChanged(signal));
  }

  /// Gets org.mpris.MediaPlayer2.Playlists.PlaylistCount
  Future<int> getPlaylistCount() async {
    var value = await getProperty(
        'org.mpris.MediaPlayer2.Playlists', 'PlaylistCount',
        signature: DBusSignature('u'));
    return value.asUint32();
  }

  /// Gets org.mpris.MediaPlayer2.Playlists.Orderings
  Future<List<String>> getOrderings() async {
    var value = await getProperty(
        'org.mpris.MediaPlayer2.Playlists', 'Orderings',
        signature: DBusSignature('as'));
    return value.asStringArray().toList();
  }

  /// Gets org.mpris.MediaPlayer2.Playlists.ActivePlaylist
  Future<DBusStruct> getActivePlaylist() async {
    var value = await getProperty(
        'org.mpris.MediaPlayer2.Playlists', 'ActivePlaylist',
        signature: DBusSignature('(b(oss))'));
    return value.asStruct();
  }

  /// Invokes org.mpris.MediaPlayer2.Playlists.ActivatePlaylist()
  Future<void> callActivatePlaylist(String PlaylistId,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.mpris.MediaPlayer2.Playlists', 'ActivatePlaylist',
        [DBusObjectPath(PlaylistId)],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.mpris.MediaPlayer2.Playlists.GetPlaylists()
  Future<List<DBusStruct>> callGetPlaylists(
      int Index, int MaxCount, String Order, bool ReverseOrder,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    var result = await callMethod(
        'org.mpris.MediaPlayer2.Playlists',
        'GetPlaylists',
        [
          DBusUint32(Index),
          DBusUint32(MaxCount),
          DBusString(Order),
          DBusBoolean(ReverseOrder)
        ],
        replySignature: DBusSignature('a(oss)'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0]
        .asArray()
        .map((child) => child.asStruct())
        .toList();
  }
}
