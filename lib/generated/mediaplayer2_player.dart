// This file was generated using the following command and may be overwritten.
// dart-dbus generate-remote-object ./lib/generated/org.mpris.MediaPlayer2.Player.xml

import 'package:dbus/dbus.dart';

/// Signal data for org.mpris.MediaPlayer2.Player.Seeked.
class MediaPlayer2PlayerSeeked extends DBusSignal {
  int get Position => (values[0] as DBusInt64).value;

  MediaPlayer2PlayerSeeked(DBusSignal signal)
      : super(signal.sender, signal.path, signal.interface, signal.member,
            signal.values);
}

class MediaPlayer2Player extends DBusRemoteObject {
  MediaPlayer2Player(DBusClient client, String destination,
      {DBusObjectPath path =
          const DBusObjectPath.unchecked('/org/mpris/MediaPlayer2')})
      : super(client, destination, path);

  /// Gets org.mpris.MediaPlayer2.Player.PlaybackStatus
  Future<String> getPlaybackStatus() async {
    var value =
        await getProperty('org.mpris.MediaPlayer2.Player', 'PlaybackStatus');
    return (value as DBusString).value;
  }

  /// Gets org.mpris.MediaPlayer2.Player.LoopStatus
  Future<String> getLoopStatus() async {
    var value =
        await getProperty('org.mpris.MediaPlayer2.Player', 'LoopStatus');
    return (value as DBusString).value;
  }

  /// Sets org.mpris.MediaPlayer2.Player.LoopStatus
  Future<void> setLoopStatus(String value) async {
    await setProperty(
        'org.mpris.MediaPlayer2.Player', 'LoopStatus', DBusString(value));
  }

  /// Gets org.mpris.MediaPlayer2.Player.Rate
  Future<double> getRate() async {
    var value = await getProperty('org.mpris.MediaPlayer2.Player', 'Rate');
    return (value as DBusDouble).value;
  }

  /// Sets org.mpris.MediaPlayer2.Player.Rate
  Future<void> setRate(double value) async {
    await setProperty(
        'org.mpris.MediaPlayer2.Player', 'Rate', DBusDouble(value));
  }

  /// Gets org.mpris.MediaPlayer2.Player.Shuffle
  Future<bool> getShuffle() async {
    var value = await getProperty('org.mpris.MediaPlayer2.Player', 'Shuffle');
    return (value as DBusBoolean).value;
  }

  /// Sets org.mpris.MediaPlayer2.Player.Shuffle
  Future<void> setShuffle(bool value) async {
    await setProperty(
        'org.mpris.MediaPlayer2.Player', 'Shuffle', DBusBoolean(value));
  }

  /// Gets org.mpris.MediaPlayer2.Player.Metadata
  Future<Map<String, DBusValue>> getMetadata() async {
    var value = await getProperty('org.mpris.MediaPlayer2.Player', 'Metadata');
    return (value as DBusDict).children.map((key, value) =>
        MapEntry((key as DBusString).value, (value as DBusVariant).value));
  }

  /// Gets org.mpris.MediaPlayer2.Player.Volume
  Future<double> getVolume() async {
    var value = await getProperty('org.mpris.MediaPlayer2.Player', 'Volume');
    return (value as DBusDouble).value;
  }

  /// Sets org.mpris.MediaPlayer2.Player.Volume
  Future<void> setVolume(double value) async {
    await setProperty(
        'org.mpris.MediaPlayer2.Player', 'Volume', DBusDouble(value));
  }

  /// Gets org.mpris.MediaPlayer2.Player.Position
  Future<int> getPosition() async {
    var value = await getProperty('org.mpris.MediaPlayer2.Player', 'Position');
    return (value as DBusInt64).value;
  }

  /// Gets org.mpris.MediaPlayer2.Player.MinimumRate
  Future<double> getMinimumRate() async {
    var value =
        await getProperty('org.mpris.MediaPlayer2.Player', 'MinimumRate');
    return (value as DBusDouble).value;
  }

  /// Gets org.mpris.MediaPlayer2.Player.MaximumRate
  Future<double> getMaximumRate() async {
    var value =
        await getProperty('org.mpris.MediaPlayer2.Player', 'MaximumRate');
    return (value as DBusDouble).value;
  }

  /// Gets org.mpris.MediaPlayer2.Player.CanGoNext
  Future<bool> getCanGoNext() async {
    var value = await getProperty('org.mpris.MediaPlayer2.Player', 'CanGoNext');
    return (value as DBusBoolean).value;
  }

  /// Gets org.mpris.MediaPlayer2.Player.CanGoPrevious
  Future<bool> getCanGoPrevious() async {
    var value =
        await getProperty('org.mpris.MediaPlayer2.Player', 'CanGoPrevious');
    return (value as DBusBoolean).value;
  }

  /// Gets org.mpris.MediaPlayer2.Player.CanPlay
  Future<bool> getCanPlay() async {
    var value = await getProperty('org.mpris.MediaPlayer2.Player', 'CanPlay');
    return (value as DBusBoolean).value;
  }

  /// Gets org.mpris.MediaPlayer2.Player.CanPause
  Future<bool> getCanPause() async {
    var value = await getProperty('org.mpris.MediaPlayer2.Player', 'CanPause');
    return (value as DBusBoolean).value;
  }

  /// Gets org.mpris.MediaPlayer2.Player.CanSeek
  Future<bool> getCanSeek() async {
    var value = await getProperty('org.mpris.MediaPlayer2.Player', 'CanSeek');
    return (value as DBusBoolean).value;
  }

  /// Gets org.mpris.MediaPlayer2.Player.CanControl
  Future<bool> getCanControl() async {
    var value =
        await getProperty('org.mpris.MediaPlayer2.Player', 'CanControl');
    return (value as DBusBoolean).value;
  }

  /// Invokes org.mpris.MediaPlayer2.Player.Next()
  Future callNext() async {
    await callMethod('org.mpris.MediaPlayer2.Player', 'Next', []);
  }

  /// Invokes org.mpris.MediaPlayer2.Player.Previous()
  Future callPrevious() async {
    await callMethod('org.mpris.MediaPlayer2.Player', 'Previous', []);
  }

  /// Invokes org.mpris.MediaPlayer2.Player.Pause()
  Future callPause() async {
    await callMethod('org.mpris.MediaPlayer2.Player', 'Pause', []);
  }

  /// Invokes org.mpris.MediaPlayer2.Player.PlayPause()
  Future callPlayPause() async {
    await callMethod('org.mpris.MediaPlayer2.Player', 'PlayPause', []);
  }

  /// Invokes org.mpris.MediaPlayer2.Player.Stop()
  Future callStop() async {
    await callMethod('org.mpris.MediaPlayer2.Player', 'Stop', []);
  }

  /// Invokes org.mpris.MediaPlayer2.Player.Play()
  Future callPlay() async {
    await callMethod('org.mpris.MediaPlayer2.Player', 'Play', []);
  }

  /// Invokes org.mpris.MediaPlayer2.Player.Seek()
  Future callSeek(int Offset) async {
    await callMethod(
        'org.mpris.MediaPlayer2.Player', 'Seek', [DBusInt64(Offset)]);
  }

  /// Invokes org.mpris.MediaPlayer2.Player.SetPosition()
  Future callSetPosition(String TrackId, int Position) async {
    await callMethod('org.mpris.MediaPlayer2.Player', 'SetPosition',
        [DBusObjectPath(TrackId), DBusInt64(Position)]);
  }

  /// Invokes org.mpris.MediaPlayer2.Player.OpenUri()
  Future callOpenUri(String Uri) async {
    await callMethod(
        'org.mpris.MediaPlayer2.Player', 'OpenUri', [DBusString(Uri)]);
  }

  /// Subscribes to org.mpris.MediaPlayer2.Player.Seeked.
  Stream<MediaPlayer2PlayerSeeked> subscribeSeeked() {
    var signals = subscribeSignal('org.mpris.MediaPlayer2.Player', 'Seeked');
    return signals.map((signal) {
      if (signal.values.length == 1 &&
          signal.values[0].signature == DBusSignature('x')) {
        return MediaPlayer2PlayerSeeked(signal);
      } else {
        throw 'org.mpris.MediaPlayer2.Player.Seeked conatins invalid values \${signal.values}';
      }
    });
  }
}
