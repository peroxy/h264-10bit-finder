# h264-10bit-finder

Bash script that recursively scans a directory for video files encoded with 10-bit color depth. Useful for finding x264 10-bit anime rips that cause playback issues on hardware media centers lacking Hi10P decoding support.

## Prerequisites

[mediainfo](https://mediaarea.net/en/MediaInfo) must be installed.

```bash
# Debian/Ubuntu
sudo apt install mediainfo

# macOS
brew install mediainfo

# Arch
sudo pacman -S mediainfo
```

## Usage

```bash
./finder.sh <directory>
```

The script walks the given directory recursively, inspects each video file with `mediainfo`, and prints the absolute path of any file with 10-bit color depth.

```
$ ./finder.sh ~/Videos
/home/peroxy/Videos/Neon.Genesis.Evangelion.S01E01.Angel.Attack.HDTV-720p.mkv
/home/peroxy/Videos/Demon.Slayer-.Kimetsu.no.Yaiba.S02E02.Deep.Sleep.Bluray-1080p.mkv
```

## Supported formats

The script matches files by extension: `.mkv`, `.mp4`, `.avi`, `.webm`, `.flv`, `.mov`, `.wmv`, `.m4v`, `.vob`, `.ogg`, `.ogv`, `.3gp`, `.rm`, `.rmvb`, and others.
