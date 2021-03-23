// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object ./lib/generated/org.mpris.MediaPlayer2.TrackList.xml

import 'package:dbus/dbus.dart';

/// Signal data for org.mpris.MediaPlayer2.TrackList.TrackListReplaced.
class MediaPlayer2TrackListTrackListReplaced extends DBusSignal {
  List<String> get Tracks => (values[0] as DBusArray)
      .children
      .map((child) => (child as DBusObjectPath).value)
      .toList();
  String get CurrentTrack => (values[1] as DBusObjectPath).value;

  MediaPlayer2TrackListTrackListReplaced(DBusSignal signal)
      : super(signal.sender, signal.path, signal.interface, signal.member,
            signal.values);
}

/// Signal data for org.mpris.MediaPlayer2.TrackList.TrackAdded.
class MediaPlayer2TrackListTrackAdded extends DBusSignal {
  Map<String, DBusValue> get Metadata =>
      (values[0] as DBusDict).children.map((key, value) =>
          MapEntry((key as DBusString).value, (value as DBusVariant).value));
  String get AfterTrack => (values[1] as DBusObjectPath).value;

  MediaPlayer2TrackListTrackAdded(DBusSignal signal)
      : super(signal.sender, signal.path, signal.interface, signal.member,
            signal.values);
}

/// Signal data for org.mpris.MediaPlayer2.TrackList.TrackRemoved.
class MediaPlayer2TrackListTrackRemoved extends DBusSignal {
  String get TrackId => (values[0] as DBusObjectPath).value;

  MediaPlayer2TrackListTrackRemoved(DBusSignal signal)
      : super(signal.sender, signal.path, signal.interface, signal.member,
            signal.values);
}

/// Signal data for org.mpris.MediaPlayer2.TrackList.TrackMetadataChanged.
class MediaPlayer2TrackListTrackMetadataChanged extends DBusSignal {
  String get TrackId => (values[0] as DBusObjectPath).value;
  Map<String, DBusValue> get Metadata =>
      (values[1] as DBusDict).children.map((key, value) =>
          MapEntry((key as DBusString).value, (value as DBusVariant).value));

  MediaPlayer2TrackListTrackMetadataChanged(DBusSignal signal)
      : super(signal.sender, signal.path, signal.interface, signal.member,
            signal.values);
}

class MediaPlayer2TrackList extends DBusRemoteObject {
  MediaPlayer2TrackList(DBusClient client, String destination,
      {DBusObjectPath path =
          const DBusObjectPath.unchecked('/org/mpris/MediaPlayer2')})
      : super(client, destination, path);

  /// Gets org.mpris.MediaPlayer2.TrackList.Tracks
  Future<List<String>> getTracks() async {
    var value = await getProperty('org.mpris.MediaPlayer2.TrackList', 'Tracks');
    return (value as DBusArray)
        .children
        .map((child) => (child as DBusObjectPath).value)
        .toList();
  }

  /// Gets org.mpris.MediaPlayer2.TrackList.CanEditTracks
  Future<bool> getCanEditTracks() async {
    var value =
        await getProperty('org.mpris.MediaPlayer2.TrackList', 'CanEditTracks');
    return (value as DBusBoolean).value;
  }

  /// Invokes org.mpris.MediaPlayer2.TrackList.GetTracksMetadata()
  Future<List<Map<String, DBusValue>>> callGetTracksMetadata(
      List<String> TrackIds) async {
    var result = await callMethod(
        'org.mpris.MediaPlayer2.TrackList', 'GetTracksMetadata', [
      DBusArray(
          DBusSignature('o'), TrackIds.map((child) => DBusObjectPath(child)))
    ]);
    return (result.returnValues[0] as DBusArray)
        .children
        .map((child) => (child as DBusDict).children.map((key, value) =>
            MapEntry((key as DBusString).value, (value as DBusVariant).value)))
        .toList();
  }

  /// Invokes org.mpris.MediaPlayer2.TrackList.AddTrack()
  Future callAddTrack(String Uri, String AfterTrack, bool SetAsCurrent) async {
    await callMethod('org.mpris.MediaPlayer2.TrackList', 'AddTrack', [
      DBusString(Uri),
      DBusObjectPath(AfterTrack),
      DBusBoolean(SetAsCurrent)
    ]);
  }

  /// Invokes org.mpris.MediaPlayer2.TrackList.RemoveTrack()
  Future callRemoveTrack(String TrackId) async {
    await callMethod('org.mpris.MediaPlayer2.TrackList', 'RemoveTrack',
        [DBusObjectPath(TrackId)]);
  }

  /// Invokes org.mpris.MediaPlayer2.TrackList.GoTo()
  Future callGoTo(String TrackId) async {
    await callMethod(
        'org.mpris.MediaPlayer2.TrackList', 'GoTo', [DBusObjectPath(TrackId)]);
  }

  /// Subscribes to org.mpris.MediaPlayer2.TrackList.TrackListReplaced.
  Stream<MediaPlayer2TrackListTrackListReplaced> subscribeTrackListReplaced() {
    var signals = subscribeSignal(
        'org.mpris.MediaPlayer2.TrackList', 'TrackListReplaced');
    return signals.map((signal) {
      if (signal.values.length == 2 &&
          signal.values[0].signature == DBusSignature('ao') &&
          signal.values[1].signature == DBusSignature('o')) {
        return MediaPlayer2TrackListTrackListReplaced(signal);
      } else {
        throw 'org.mpris.MediaPlayer2.TrackList.TrackListReplaced conatins invalid values \${signal.values}';
      }
    });
  }

  /// Subscribes to org.mpris.MediaPlayer2.TrackList.TrackAdded.
  Stream<MediaPlayer2TrackListTrackAdded> subscribeTrackAdded() {
    var signals =
        subscribeSignal('org.mpris.MediaPlayer2.TrackList', 'TrackAdded');
    return signals.map((signal) {
      if (signal.values.length == 2 &&
          signal.values[0].signature == DBusSignature('a{sv}') &&
          signal.values[1].signature == DBusSignature('o')) {
        return MediaPlayer2TrackListTrackAdded(signal);
      } else {
        throw 'org.mpris.MediaPlayer2.TrackList.TrackAdded conatins invalid values \${signal.values}';
      }
    });
  }

  /// Subscribes to org.mpris.MediaPlayer2.TrackList.TrackRemoved.
  Stream<MediaPlayer2TrackListTrackRemoved> subscribeTrackRemoved() {
    var signals =
        subscribeSignal('org.mpris.MediaPlayer2.TrackList', 'TrackRemoved');
    return signals.map((signal) {
      if (signal.values.length == 1 &&
          signal.values[0].signature == DBusSignature('o')) {
        return MediaPlayer2TrackListTrackRemoved(signal);
      } else {
        throw 'org.mpris.MediaPlayer2.TrackList.TrackRemoved conatins invalid values \${signal.values}';
      }
    });
  }

  /// Subscribes to org.mpris.MediaPlayer2.TrackList.TrackMetadataChanged.
  Stream<MediaPlayer2TrackListTrackMetadataChanged>
      subscribeTrackMetadataChanged() {
    var signals = subscribeSignal(
        'org.mpris.MediaPlayer2.TrackList', 'TrackMetadataChanged');
    return signals.map((signal) {
      if (signal.values.length == 2 &&
          signal.values[0].signature == DBusSignature('o') &&
          signal.values[1].signature == DBusSignature('a{sv}')) {
        return MediaPlayer2TrackListTrackMetadataChanged(signal);
      } else {
        throw 'org.mpris.MediaPlayer2.TrackList.TrackMetadataChanged conatins invalid values \${signal.values}';
      }
    });
  }
}
