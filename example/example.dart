import 'package:mpris/mpris.dart';

Future main() => runSpotifyExample('org.mpris.MediaPlayer2.spotify');

// This code works for the Spotify client and the spotifyd daemon
Future runSpotifyExample(String name) async {
  final mpris = MPRIS();
  final player = mpris.getPlayer(name);

  print('Playing song...');
  await player.openUri('spotify:track:5Wi2zLwER77wQaZxnr6sx0');
  await printPlaying(player);

  await Future.delayed(const Duration(seconds: 5));

  print('Playing album...');
  await player.openUri('spotify:album:4RTDlj21LMbDZD5sm4WTEW');
  await printPlaying(player);

  await Future.delayed(const Duration(seconds: 5));

  print('Skipping to next song...');
  await player.next();
  await printPlaying(player);

  await Future.delayed(const Duration(seconds: 5));

  print('Toggling play...');
  await player.toggle();
  await printPlaying(player);

  await mpris.close();
}

Future printPlaying(MPRISPlayer player) async {
  // Some delay is required because changes don't happen instantly. The timout can also be lower, but then old metadata may be returned
  await Future.delayed(const Duration(milliseconds: 500));
  final metadata = await player.getMetadata();
  print("Playing '${metadata.trackTitle}' by '${metadata.trackArtists?[0]}'");
}
