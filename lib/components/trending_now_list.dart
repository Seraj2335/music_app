import 'dart:async';
import 'dart:typed_data';

import 'package:assignment_app/constants/color_constants.dart';
import 'package:audiofileplayer/audio_system.dart';
import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/string_constant.dart';

class TrendingNowSection extends StatefulWidget {
  @override
  State<TrendingNowSection> createState() => _TrendingNowSectionState();
}

class _TrendingNowSectionState extends State<TrendingNowSection> {
  // late Audio _audio;
  // bool _audioPlaying = false;
  // double? _audioDurationSeconds;
  // double? _audioPositionSeconds;
  // double _audioVolume = 1.0;
  // double _seekSliderValue = 0.0; // Normalized 0.0 - 1.0.

  // /// On-the-fly audio data for the second card.
  // int _spawnedAudioCount = 0;
  // ByteData? _audioByteData;

  // /// Remote url audio data for the third card.
  // Audio? _remoteAudio;
  // bool _remoteAudioPlaying = false;
  // bool _remoteAudioLoading = false;
  // String? _remoteErrorMessage;

  // /// Background audio data for the fourth card.
  // late Audio _backgroundAudio;
  // late bool _backgroundAudioPlaying;
  // double? _backgroundAudioDurationSeconds;
  // double _backgroundAudioPositionSeconds = 0;

  // /// Local file data for the fifth card.
  // late Audio _documentAudio;
  // String? _documentsPath;
  // bool _documentAudioPlaying = false;
  // String? _documentErrorMessage;

  // @override
  // void initState() {
  //   super.initState();
  //   AudioSystem.instance.addMediaEventListener(_mediaEventListener);
  //   // First card.
  //   _audio = Audio.load('assets/audio/printermanual.m4a',
  //       onComplete: () => setState(() => _audioPlaying = false),
  //       onDuration: (double durationSeconds) =>
  //           setState(() => _audioDurationSeconds = durationSeconds),
  //       onPosition: (double positionSeconds) => setState(() {
  //             _audioPositionSeconds = positionSeconds;
  //             _seekSliderValue =
  //                 _audioPositionSeconds! / _audioDurationSeconds!;
  //           }));
  //   // Second card.
  //   _loadAudioByteData();
  //   // Third card
  //   _loadRemoteAudio();
  //   // Fourth card.
  //   _backgroundAudio = Audio.load('assets/audio/printermanual.m4a',
  //       onDuration: (double durationSeconds) =>
  //           _backgroundAudioDurationSeconds = durationSeconds,
  //       onPosition: (double positionSeconds) =>
  //           _backgroundAudioPositionSeconds = positionSeconds,
  //       looping: true,
  //       playInBackground: true);
  //   _backgroundAudioPlaying = false;
  //   // Fifth card.
  //   _loadDocumentPathAudio();
  // }

  // void _loadAudioByteData() async {
  //   _audioByteData = await rootBundle.load('assets/audio/sinesweep.mp3');
  //   setState(() {});
  // }

  // void _loadRemoteAudio() {
  //   _remoteErrorMessage = null;
  //   _remoteAudioLoading = true;
  //   _remoteAudio = Audio.loadFromRemoteUrl('https://streams.kqed.org/kqedradio',
  //       onDuration: (_) => setState(() => _remoteAudioLoading = false),
  //       onError: (String? message) => setState(() {
  //             _remoteErrorMessage = message;
  //             _remoteAudio!.dispose();
  //             _remoteAudio = null;
  //             _remoteAudioPlaying = false;
  //             _remoteAudioLoading = false;
  //           }));
  // }

  //  void _loadDocumentPathAudio() async {
  //   final Directory? directory = Platform.isAndroid
  //       ? await getExternalStorageDirectory()
  //       : await getApplicationDocumentsDirectory();
  //   setState(() => _documentsPath = directory!.path);

  //   _documentAudio = Audio.loadFromAbsolutePath(
  //       '$_documentsPath${Platform.pathSeparator}foo.mp3',
  //       onComplete: () => setState(() => _documentAudioPlaying = false),
  //       onError: (String? message) => setState(() {
  //             _documentErrorMessage = message;
  //             _documentAudio.dispose();
  //           }));
  // }

  // @override
  // void dispose() {
  //   AudioSystem.instance.removeMediaEventListener(_mediaEventListener);
  //   _audio.dispose();
  //   if (_remoteAudio != null) {
  //     _remoteAudio!.dispose();
  //   }
  //   _backgroundAudio.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.29,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            trendingNow,
            style: TextStyle(
                color: Colors.grey, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: size.height * 0.21,
          child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 15),
              scrollDirection: Axis.horizontal,
              itemCount: listData.length,
              itemBuilder: (context, index) => Container(
                    width: size.width * 0.6,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(listData[index].image),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.black),
                    child: Stack(alignment: Alignment.topRight, children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Icon(
                          Icons.keyboard_control,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.10),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          height: 80,
                          margin:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [kOpaqueGreen, kOpaqueVoilet]),
                              borderRadius: BorderRadius.circular(15)),
                          child: Flex(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            direction: Axis.horizontal,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 120,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      listData[index].name,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      listData[index].singer,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 10),
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // no data for now
                                },
                                child: Icon(
                                  Icons.play_circle_fill,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                  )),
        )
      ]),
    );
  }
}
