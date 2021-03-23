// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object ./lib/generated/org.mpris.MediaPlayer2.Playlists.xml

import 'package:dbus/dbus.dart';

/// Signal data for org.mpris.MediaPlayer2.Playlists.PlaylistChanged.
class MediaPlayer2PlaylistsPlaylistChanged extends DBusSignal {
  DBusValue get Playlist => values[0];

  MediaPlayer2PlaylistsPlaylistChanged(DBusSignal signal)
      : super(signal.sender, signal.path, signal.interface, signal.member,
            signal.values);
}

class MediaPlayer2Playlists extends DBusRemoteObject {
  MediaPlayer2Playlists(DBusClient client, String destination,
      {DBusObjectPath path =
          const DBusObjectPath.unchecked('/org/mpris/MediaPlayer2')})
      : super(client, destination, path);

  /// Gets org.mpris.MediaPlayer2.Playlists.PlaylistCount
  Future<int> getPlaylistCount() async {
    var value =
        await getProperty('org.mpris.MediaPlayer2.Playlists', 'PlaylistCount');
    return (value as DBusUint32).value;
  }

  /// Gets org.mpris.MediaPlayer2.Playlists.Orderings
  Future<List<String>> getOrderings() async {
    var value =
        await getProperty('org.mpris.MediaPlayer2.Playlists', 'Orderings');
    return (value as DBusArray)
        .children
        .map((child) => (child as DBusString).value)
        .toList();
  }

  /// Gets org.mpris.MediaPlayer2.Playlists.ActivePlaylist
  Future<DBusValue> getActivePlaylist() async {
    var value =
        await getProperty('org.mpris.MediaPlayer2.Playlists', 'ActivePlaylist');
    return value;
  }

  /// Invokes org.mpris.MediaPlayer2.Playlists.ActivatePlaylist()
  Future callActivatePlaylist(String PlaylistId) async {
    await callMethod('org.mpris.MediaPlayer2.Playlists', 'ActivatePlaylist',
        [DBusObjectPath(PlaylistId)]);
  }

  /// Invokes org.mpris.MediaPlayer2.Playlists.GetPlaylists()
  Future<List<DBusValue>> callGetPlaylists(
      int Index, int MaxCount, String Order, bool ReverseOrder) async {
    var result =
        await callMethod('org.mpris.MediaPlayer2.Playlists', 'GetPlaylists', [
      DBusUint32(Index),
      DBusUint32(MaxCount),
      DBusString(Order),
      DBusBoolean(ReverseOrder)
    ]);
    return (result.returnValues[0] as DBusArray)
        .children
        .map((child) => child)
        .toList();
  }

  /// Subscribes to org.mpris.MediaPlayer2.Playlists.PlaylistChanged.
  Stream<MediaPlayer2PlaylistsPlaylistChanged> subscribePlaylistChanged() {
    var signals =
        subscribeSignal('org.mpris.MediaPlayer2.Playlists', 'PlaylistChanged');
    return signals.map((signal) {
      if (signal.values.length == 1 &&
          signal.values[0].signature == DBusSignature('(oss)')) {
        return MediaPlayer2PlaylistsPlaylistChanged(signal);
      } else {
        throw 'org.mpris.MediaPlayer2.Playlists.PlaylistChanged conatins invalid values \${signal.values}';
      }
    });
  }
}
