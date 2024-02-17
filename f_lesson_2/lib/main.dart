import 'package:flutter/material.dart';

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.deepPurple,
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          // ! leading - sol tərəfdəki iconu təyin edir.
          leading: const Text('X'),
          // ! leadingWidth - leadingin genişliyini təyin edir.
          leadingWidth: 50,
          // ! actions - sağ tərəfdəki iconları təyin edir.
          actions: const [
            Text('X'),
            Text('Y'),
            Text('Z'),
          ],
          // ! titleSpacing - başlıq arasındakı boşluğu təyin edir.
          titleSpacing: 40,
          title: const Text(
            'Hello World!',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.wavy,
              decorationThickness: 1,
              // ! wordSpacing - sözlər arası boşluğu təyin edir.
              wordSpacing: 10,
              // ! letterSpacing - hərflər arası boşluğu təyin edir.
              letterSpacing: 5,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.blue,
          elevation: 10.0,
          shadowColor: Colors.red,
          toolbarHeight: 56.0,
          toolbarOpacity: 1,
        ),
        // ! backgroundColor - Scafolldun arxa fon rəngini təyin edir.
        backgroundColor: Colors.grey,
        // ! body - Scafolld`un əsas hissəsini təyin edir.
        // ! Container - bir eni, hündürlüyü və rəngi olan bir widgetdir.
        body: Container(
          // ! decoration - Container`in dekorasiyasını təyin edir.
          // ! Əgər dekorasiya təyin edilirsə, color xüsusiyyəti işləmir.
          decoration: BoxDecoration(
            // ! borderRadius - Container`in kənarlarını yuvarlaqlaşdırır.
            borderRadius: BorderRadius.circular(30),
            // ! color - Container`in rəngini təyin edir.
            color: Colors.yellow,
            // ! border - Container`in sərhədlərini təyin edir.
            border: Border.all(
              // ! color - sərhədin rəngini təyin edir.
              color: Colors.red,
              // ! width - sərhədin enini təyin edir.
              width: 5,
              // ! strokeAlign - sərhədin mövqeyini təyin edir.
              strokeAlign: BorderSide.strokeAlignOutside,
              // ! style - sərhədin stili təyin edir.
              style: BorderStyle.solid,
            ),
          ),
          // ! margin - Container`in özünün ətrafında boş məsafə yaradır.
          margin: const EdgeInsets.all(30),
          // ! padding - Container`in daxilindəki widgetin ətrafında boş məsafə yaradır.
          padding: const EdgeInsets.all(35),
          // ! alignment - Container`in daxilindəki widgetin mövqeyini  təyin edir.
          alignment: Alignment.center,
          // ! color - Container`in rəngini təyin edir.
          // color: Colors.yellow,
          // ! width - Container`in enini təyin edir.
          width: 100,
          // ! height - Container`in hündürlüyünü təyin edir.
          height: 100,
          // ! Center widgeti - əsas hissəni ortaya alır.
          // ! child - üst widgetin  daxilinə başqa bir widgeti əlavə etmək üçün istifadə olunur.
          child: const Text(
            'A',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
