import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:untitled2/music2.dart';

class music extends StatefulWidget {
  const music({Key? key}) : super(key: key);

  @override
  State<music> createState() => _musicState();
}

class _musicState extends State<music> {
 OnAudioQuery _audioQuery = OnAudioQuery();

  Future<List<SongModel>> getsong() async {
    List<SongModel> songlist = await _audioQuery.querySongs();
    return songlist;
  }

  Future<int> test() async {
    await Future.delayed(Duration(seconds: 5));
    return 10;
  }

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
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text("Music Player"),
      ),
      body: FutureBuilder(
        future: getsong(),
        builder: (context, snapshot) {
          print(snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.done) {
            List<SongModel> val = snapshot.data as List<SongModel>;
            return ListView.builder(
              itemCount: val.length,
              itemBuilder: (context, index) {
             SongModel songmodel = val[index];
              return ListTile(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return second(val , index);
                },));
              },
                title: Text("${songmodel.album}"),
                subtitle: Text("${val[index].title}"),
                trailing: Text(printDuration(Duration(milliseconds: songmodel.duration!))),
              );
            },);
          } else {
            return Container(child: Text("10"));
          }
        },
      ),
    );
  }
}
