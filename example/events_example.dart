import 'package:mpris/mpris.dart';

void main() async {
  final players = await MPRIS().getPlayers();
  late final MPRISPlayer player;
  for (final p in players) {
    final id = await p.getIdentity();
    if (id == 'Spotify') {
      player = p;
    }
  }

  player.propertiesChanged().listen((event) {
    switch (event) {
      case MetaDataChanged(:final metadata):
        print(metadata);
      case PlaybackStatusChanged(:final playbackStatus):
        print(playbackStatus);
      case LoopStatusChanged(:final loopStatus):
        print(loopStatus);
      case ShuffleChanged(:final shuffle):
        print(shuffle);
      case VolumeChanged(:final volume):
        print(volume);
      case UnsuportedEvent():
        break;
    }
  });

  player.seeked().listen(print);

  MPRIS().playerChanged().listen((event) {
    switch (event) {
      case PlayerMountEvent(:final player):
        player.toggle();
      case PlayerUnmountEvent(:final playerName):
        print(playerName);
      case PlayerUnknownEvent(:final event):
        print(event);
    }
  });
}
