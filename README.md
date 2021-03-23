# mpris

A library to interface [D-Bus MPRIS](https://specifications.freedesktop.org/mpris-spec/latest/) media players on linux systems.

## Features

All player functions are implemented, although the may be not working as testing wasn't very intense.  
Playlists and track list have not been implemented yet, but they should be easy to do.  
Maybe not all metadata that can be available is being parsed yet, so you should keep that in mind if there is something
missing.

## Examples

See in the `examples/` directory for getting all available players and using
the [Spotify client](https://www.spotify.com/us/download/linux/) or [spotifyd](https://github.com/Spotifyd/spotifyd).

## Note

This library has been initially developed to interface with [spotifyd](https://github.com/Spotifyd/spotifyd).  
Stuff that isn't supported by it is not implemented (like playlists and track list).  
If you would like to extend this library, please contribute at https://github.com/jld3103/dart-mpris.