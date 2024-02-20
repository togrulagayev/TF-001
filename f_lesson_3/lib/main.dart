import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade300,
          centerTitle: true,
          title: const Text(
            'Lesson 3',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ! Padding child`ındakı vidgetin ətrafına  boşluq əlavə edir.
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 16),
                    child: IconButton(
                      style: ButtonStyle(
                        // ! shape bizdən düymənin formasını təyin edir.
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder()),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade200),
                      ),
                      //! onPressed bizdən funksiya gözləyir. Bu hissədə düymənin hansı işi görəcəyini yazırıq.
                      onPressed: () {
                        debugPrint('Icon button clicked');
                      }, // anonim (adsız) funksiya
                      // ! icon bizdən ikon gözləyir. Bu hissədə düymənin ikonunu yazırıq.
                      icon: const Icon(Icons.location_searching_rounded),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey.shade200),
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder()),
                    ),
                    onPressed: () {
                      debugPrint('All button clicked');
                    },
                    child: const Text("All"),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey.shade200),
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder()),
                    ),
                    onPressed: () {
                      debugPrint('Music button clicked');
                    },
                    child: const Text("Music"),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey.shade200),
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder()),
                    ),
                    onPressed: () {
                      debugPrint('Playlist button clicked');
                    },
                    child: const Text("Playlists"),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey.shade200),
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder()),
                    ),
                    onPressed: () {
                      debugPrint('Live button clicked');
                    },
                    child: const Text("Live"),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              child: Column(
                children: [
                  // ! Image.network bizdən internetdən şəkilin linkini gözləyir. Bu hissədə şəkilin linkini yazırıq.
                  Image.network(
                    'https://www.aiconsultive.com/wp-content/uploads/2023/07/Youtube_Thumbnail_animated_series_cartoon_style_vibran_top_right.jpg',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // ! CircleAvatar bizdən profil şəklini gözləyir. Bu hissədə profil şəklini yazırıq.
                        const CircleAvatar(
                          foregroundImage: NetworkImage(
                            'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671122.jpg',
                          ),
                        ),
                        const Column(
                          children: [
                            Text('Flutter is awesome!'),
                            Text("Flutter Tv - 3M views- 2 month ago"),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              child: Column(
                children: [
                  // ! Image.network bizdən internetdən şəkilin linkini gözləyir. Bu hissədə şəkilin linkini yazırıq.
                  Image.network(
                    'https://www.aiconsultive.com/wp-content/uploads/2023/07/Youtube_Thumbnail_animated_series_cartoon_style_vibran_top_left.jpg',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // ! CircleAvatar bizdən profil şəklini gözləyir. Bu hissədə profil şəklini yazırıq.
                        const CircleAvatar(
                          foregroundImage: NetworkImage(
                            'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671122.jpg',
                          ),
                        ),
                        const Column(
                          children: [
                            Text('Flutter is awesome!'),
                            Text('Flutter Tv - 1M views - 1 month ago'),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
