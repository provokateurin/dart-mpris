import 'package:mpris/mpris.dart';

Future main() async {
  final mpris = MPRIS();
  print((await mpris.getPlayers()).map((e) => e.name).toList());
  await mpris.close();
}
