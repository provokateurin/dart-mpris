#!/bin/bash
git submodule init
git submodule update
mkdir -p ./lib/generated
cp ./mpris-spec/spec/org.mpris.MediaPlayer2*.xml ./lib/generated
sed -i "s|/Media_Player|/org/mpris/MediaPlayer2|g" ./lib/generated/org.mpris.MediaPlayer2.xml
sed -i "s|/Player_Interface|/org/mpris/MediaPlayer2|g" ./lib/generated/org.mpris.MediaPlayer2.Player.xml
sed -i "s|/Playlists_Interface|/org/mpris/MediaPlayer2|g" ./lib/generated/org.mpris.MediaPlayer2.Playlists.xml
sed -i "s|/Track_List_Interface|/org/mpris/MediaPlayer2|g" ./lib/generated/org.mpris.MediaPlayer2.TrackList.xml
dart pub get
dart pub upgrade
dart run dbus:dart_dbus generate-remote-object --class-name=MediaPlayer2 ./lib/generated/org.mpris.MediaPlayer2.xml -o ./lib/generated/mediaplayer2.dart
dart run dbus:dart_dbus generate-remote-object --class-name=MediaPlayer2Player ./lib/generated/org.mpris.MediaPlayer2.Player.xml -o ./lib/generated/mediaplayer2_player.dart
dart run dbus:dart_dbus generate-remote-object --class-name=MediaPlayer2Playlists ./lib/generated/org.mpris.MediaPlayer2.Playlists.xml -o ./lib/generated/mediaplayer2_playlists.dart
dart run dbus:dart_dbus generate-remote-object --class-name=MediaPlayer2TrackList ./lib/generated/org.mpris.MediaPlayer2.TrackList.xml -o ./lib/generated/mediaplayer2_track_list.dart
dart format --fix ./lib/generated
