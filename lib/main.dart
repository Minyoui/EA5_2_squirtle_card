import 'package:audioplayers/audioplayers.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExampleHorizontal()
    );
  }
}


class ExampleHorizontal extends StatefulWidget {
  const ExampleHorizontal({Key? key}) : super(key: key);

  static const List<String> images = [
    "assets/ace_pogi.png", "assets/drew_pogi.png",
    "assets/evane_super_pogi.png", "assets/ivan_pogi.png",
    "assets/joshua_pogi.png", "assets/juvi_pogi_3000.png",
    "assets/kalila_ganda.png", "assets/kenneth_pogi.png",
    "assets/michael_pogi.png", "assets/paul_pogi.png",
    "assets/rard_pogi.png"
  ];

  @override
  State<ExampleHorizontal> createState() => _ExampleHorizontalState();
}


class _ExampleHorizontalState extends State<ExampleHorizontal> {
  @override
  void initState() {
    super.initState();

    playMusic();
  }

  Future<void> playMusic() async {
    final player = AudioPlayer();
    await player.play(AssetSource("music.mp3"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Squirtle GO!!!!!'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Swiper(
        itemBuilder: (context, index) {
          final image = ExampleHorizontal.images[index];
          return Image.asset(
            image,
            fit: BoxFit.fill,
          );
        },
        indicatorLayout: PageIndicatorLayout.COLOR,
        autoplay: true,
        itemCount: ExampleHorizontal.images.length,
        pagination: const SwiperPagination(),
        control: const SwiperControl(),
      ),
    );
  }
}
