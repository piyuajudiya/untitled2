import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';

class second extends StatefulWidget {
  List<SongModel> songmodel;
  int pos;

  second(this.songmodel, this.pos);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  AudioPlayer player = AudioPlayer();
  bool play = false;
  double currval = 0;

  String printDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    if (duration.inHours > 0)
      return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
    else
      return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player.onPositionChanged.listen((Duration p) {
      currval = (p.inMilliseconds).toDouble();
    });
    player.onPlayerComplete.listen((event) {
      setState(() {
        widget.pos = widget.pos + 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Play"),
      ),
      body: Column(
        children: [
          Text("${widget.songmodel[widget.pos].title}"),
          Spacer(),
          Slider(
            onChangeStart: (value) async {
              await player.pause();
            },
            onChangeEnd: (value) async {
              await player.seek(Duration(milliseconds: value.toInt()));
              await player.resume();
            },
            onChanged: (value) {
              setState(() {
                currval = value;
              });
            },
            value: currval,
            min: 0,
            max: (widget.songmodel[widget.pos].duration!).toDouble(),

          ),
          Row(
            children: [
              Text(printDuration(Duration(milliseconds: currval.toInt()))),
              Spacer(),
              Text(printDuration(Duration(
                  milliseconds: widget.songmodel[widget.pos].duration!))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.skip_previous)),
              play
                  ? IconButton(
                      onPressed: () async {
                        setState(() {
                          play = !play;
                        });
                        await player.pause();
                      },
                      icon: Icon(Icons.pause))
                  : IconButton(
                      onPressed: () async {
                        setState(() {
                          play = !play;
                        });
                        await player.play(DeviceFileSource(
                            widget.songmodel[widget.pos].data));
                      },
                      icon: Icon(Icons.play_arrow_sharp)),
              IconButton(onPressed: () {}, icon: Icon(Icons.skip_next)),
            ],
          )
        ],
      ),
    );
  }
}
