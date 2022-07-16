// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object ./lib/generated/org.mpris.MediaPlayer2.TrackList.xml

import 'package:dbus/dbus.dart';

/// Signal data for org.mpris.MediaPlayer2.TrackList.TrackListReplaced.
class MediaPlayer2TrackListTrackListReplaced extends DBusSignal {
  List<String> get Tracks => values[0].asObjectPathArray().toList();
  String get CurrentTrack => values[1].asObjectPath();

  MediaPlayer2TrackListTrackListReplaced(DBusSignal signal)
      : super(
            sender: signal.sender,
            path: signal.path,
            interface: signal.interface,
            name: signal.name,
            values: signal.values);
}

/// Signal data for org.mpris.MediaPlayer2.TrackList.TrackAdded.
class MediaPlayer2TrackListTrackAdded extends DBusSignal {
  Map<String, DBusValue> get Metadata => values[0].asStringVariantDict();
  String get AfterTrack => values[1].asObjectPath();

  MediaPlayer2TrackListTrackAdded(DBusSignal signal)
      : super(
            sender: signal.sender,
            path: signal.path,
            interface: signal.interface,
            name: signal.name,
            values: signal.values);
}

/// Signal data for org.mpris.MediaPlayer2.TrackList.TrackRemoved.
class MediaPlayer2TrackListTrackRemoved extends DBusSignal {
  String get TrackId => values[0].asObjectPath();

  MediaPlayer2TrackListTrackRemoved(DBusSignal signal)
      : super(
            sender: signal.sender,
            path: signal.path,
            interface: signal.interface,
            name: signal.name,
            values: signal.values);
}

/// Signal data for org.mpris.MediaPlayer2.TrackList.TrackMetadataChanged.
class MediaPlayer2TrackListTrackMetadataChanged extends DBusSignal {
  String get TrackId => values[0].asObjectPath();
  Map<String, DBusValue> get Metadata => values[1].asStringVariantDict();

  MediaPlayer2TrackListTrackMetadataChanged(DBusSignal signal)
      : super(
            sender: signal.sender,
            path: signal.path,
            interface: signal.interface,
            name: signal.name,
            values: signal.values);
}

class MediaPlayer2TrackList extends DBusRemoteObject {
  /// Stream of org.mpris.MediaPlayer2.TrackList.TrackListReplaced signals.
  late final Stream<MediaPlayer2TrackListTrackListReplaced> trackListReplaced;

  /// Stream of org.mpris.MediaPlayer2.TrackList.TrackAdded signals.
  late final Stream<MediaPlayer2TrackListTrackAdded> trackAdded;

  /// Stream of org.mpris.MediaPlayer2.TrackList.TrackRemoved signals.
  late final Stream<MediaPlayer2TrackListTrackRemoved> trackRemoved;

  /// Stream of org.mpris.MediaPlayer2.TrackList.TrackMetadataChanged signals.
  late final Stream<MediaPlayer2TrackListTrackMetadataChanged>
      trackMetadataChanged;

  MediaPlayer2TrackList(DBusClient client, String destination,
      {DBusObjectPath path =
          const DBusObjectPath.unchecked('/org/mpris/MediaPlayer2')})
      : super(client, name: destination, path: path) {
    trackListReplaced = DBusRemoteObjectSignalStream(
            object: this,
            interface: 'org.mpris.MediaPlayer2.TrackList',
            name: 'TrackListReplaced',
            signature: DBusSignature('aoo'))
        .asBroadcastStream()
        .map((signal) => MediaPlayer2TrackListTrackListReplaced(signal));

    trackAdded = DBusRemoteObjectSignalStream(
            object: this,
            interface: 'org.mpris.MediaPlayer2.TrackList',
            name: 'TrackAdded',
            signature: DBusSignature('a{sv}o'))
        .asBroadcastStream()
        .map((signal) => MediaPlayer2TrackListTrackAdded(signal));

    trackRemoved = DBusRemoteObjectSignalStream(
            object: this,
            interface: 'org.mpris.MediaPlayer2.TrackList',
            name: 'TrackRemoved',
            signature: DBusSignature('o'))
        .asBroadcastStream()
        .map((signal) => MediaPlayer2TrackListTrackRemoved(signal));

    trackMetadataChanged = DBusRemoteObjectSignalStream(
            object: this,
            interface: 'org.mpris.MediaPlayer2.TrackList',
            name: 'TrackMetadataChanged',
            signature: DBusSignature('oa{sv}'))
        .asBroadcastStream()
        .map((signal) => MediaPlayer2TrackListTrackMetadataChanged(signal));
  }

  /// Gets org.mpris.MediaPlayer2.TrackList.Tracks
  Future<List<String>> getTracks() async {
    var value = await getProperty('org.mpris.MediaPlayer2.TrackList', 'Tracks',
        signature: DBusSignature('ao'));
    return value.asObjectPathArray().toList();
  }

  /// Gets org.mpris.MediaPlayer2.TrackList.CanEditTracks
  Future<bool> getCanEditTracks() async {
    var value = await getProperty(
        'org.mpris.MediaPlayer2.TrackList', 'CanEditTracks',
        signature: DBusSignature('b'));
    return value.asBoolean();
  }

  /// Invokes org.mpris.MediaPlayer2.TrackList.GetTracksMetadata()
  Future<List<Map<String, DBusValue>>> callGetTracksMetadata(
      List<String> TrackIds,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    var result = await callMethod('org.mpris.MediaPlayer2.TrackList',
        'GetTracksMetadata', [DBusArray.objectPath(TrackIds)],
        replySignature: DBusSignature('aa{sv}'),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
    return result.returnValues[0]
        .asArray()
        .map((child) => child.asStringVariantDict())
        .toList();
  }

  /// Invokes org.mpris.MediaPlayer2.TrackList.AddTrack()
  Future<void> callAddTrack(String Uri, String AfterTrack, bool SetAsCurrent,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod(
        'org.mpris.MediaPlayer2.TrackList',
        'AddTrack',
        [
          DBusString(Uri),
          DBusObjectPath(AfterTrack),
          DBusBoolean(SetAsCurrent)
        ],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.mpris.MediaPlayer2.TrackList.RemoveTrack()
  Future<void> callRemoveTrack(String TrackId,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod('org.mpris.MediaPlayer2.TrackList', 'RemoveTrack',
        [DBusObjectPath(TrackId)],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }

  /// Invokes org.mpris.MediaPlayer2.TrackList.GoTo()
  Future<void> callGoTo(String TrackId,
      {bool noAutoStart = false,
      bool allowInteractiveAuthorization = false}) async {
    await callMethod(
        'org.mpris.MediaPlayer2.TrackList', 'GoTo', [DBusObjectPath(TrackId)],
        replySignature: DBusSignature(''),
        noAutoStart: noAutoStart,
        allowInteractiveAuthorization: allowInteractiveAuthorization);
  }
}
