import 'package:flutter/material.dart';
// sdkdan matiral paketini import edib.

// ! void main() funksiyası Flutter tətbiqinin başlanğıc funksiyadır.
void main() {
  // ! runApp() funksiyası tətbiqin işə salınmasını (başlasın) təmin edir.
  // ! runApp() funksiyasının parametrinə tətbiqin əsas widgeti verilir.
  runApp(const MyFirstApp());
}

// ! Flutter`də widgetlər 2 yerə ayrılır:
// ! 1. Stateless widgetlər - Dəyişən olmayan widgetlər. Yəni UI-da hər hansı bir hissə sabitdirsə, o zaman bu hissəni Stateless widgetlərlə təyin edə bilərik.
// ! 2. Stateful widgetlər - Dəyişən olan widgetlər. Yəni UI-da hər hansı bir hissə dəyişə və ya yenilənə bilərsə, o zaman bu hissəni Stateful widgetlərlə təyin edə bilərik.

// ! Widget nədir?
// ! Widget - Flutter tətbiqlərinin əsas quruluşudur. Hər hansı bir hissəni təyin etmək üçün istifadə olunur.
// ! Widget UI-da göstərilən hər hansı bir hissəni təyin edir və UI elementidir.

// ! Flutter`də hazırladığımız tətbiqin nümunəsini görmək üçün Emulator`dan istifadə edirik
// ! Emulator - Virtual cihazdır. Real cihaz kimi davranır. Real cihazda olduğu kimi tətbiqləri işə salmaq üçün istifadə olunur.

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key}); //! constructor

// ! build() funksiyası widgetin təyin edildiyi funksiyadır.
// ! build() funksiyasının qaytaracağı dəyər UI-da göstəriləcək widgetlərdir.
  @override
  Widget build(BuildContext context) {
    // ! MaterialApp() - Material Design (dizayn) tətbiqləri üçün əsas widgetdir.
    // ! MaterialApp() widgeti tətbiqin əsas quruluşunu təyin edir.
    return MaterialApp(
      // ! debugShowCheckedModeBanner: false - Tətbiqin sol üstündəki "Debug" yazısını gizlədəcək.
      debugShowCheckedModeBanner: false,
      // ! color: Colors.deepPurple - Tətbiqin arxa fon rəngini təyin edir.
      color: Colors.deepPurple,
      // ! theme: ThemeData.dark() - Tətbiqin ümumi dizaynını qaranlıq rejimə təyin edir.
      // theme: ThemeData.dark(),
      // ! darkTheme: ThemeData.dark() - Tətbiqin ümumi dizaynını sistemin rejminə uyğun olaraq qaranlıq rejimə təyin edir.
      darkTheme: ThemeData.dark(),
      // ! Scaffold() - Material Design tətbiqləri üçün əsas quruluşu təyin edir.
      home: Scaffold(
        appBar: AppBar(
          // ! title: const Text('Suzan') - AppBar-da göstəriləcək başlıq mətnini təyin edir.
          title: const Text(
            'Suzan is my friend.',
            // !  maxLines: 2 - Text elementinin maksimum sətir sayını təyin edir.
            maxLines: 2,
            // ! overflow: TextOverflow.ellipsis - Text elementinin sətir sayısını keçəndə nə olacağını təyin edir.
            overflow: TextOverflow.ellipsis,
            // ! style - Text elementinin stili təyin edilir.
            style: TextStyle(
              // ! fontSize: 30.0 - Text elementinin mətninin ölçüsünü təyin edir.
              fontSize: 30.0,
              // ! color: Colors.white - Text elementinin rəngini təyin edir.
              color: Colors.white,
              // ! backgroundColor: Colors.blue - Text elementinin arxa fon rəngini təyin edir.
              // backgroundColor: Colors.blue,
              // ! fontStyle: FontStyle.italic - Text elementinin şriftini təyin edir.
              fontStyle: FontStyle.italic,
              // ! fontWeight: FontWeight.bold - Text elementinin qalın olmasını təyin edir.
              fontWeight: FontWeight.bold,
              // ! height: 20.0 - Text elementinin tutduğu yerin hündürlüyünü təyin edir.
              // height: 20.0,
              // ! decoration: TextDecoration.lineThrough - Text elementinin xəttini təyin edir.
              decoration: TextDecoration.lineThrough,
              // ! decorationColor: Colors.red - Text elementinin xəttin rəngini təyin edir.
              decorationColor: Colors.red,
              // ! decorationStyle: TextDecorationStyle.wavy - Text elementinin xəttin stili təyin edir.
              decorationStyle: TextDecorationStyle.wavy,
              // ! decorationThickness: 1 - Text elementinin xəttin qalınlığını təyin edir.
              decorationThickness: 1,
            ),
          ),
          // ! centerTitle: true - AppBar-da başlığın mərkəzdə göstərilməsini təyin edir.
          centerTitle: true,
          // ! backgroundColor: Colors.deepPurple - AppBarın arxa fon rəngini təyin edir.
          backgroundColor: Colors.deepPurple,
          // ! foregroundColor: Colors.blue - AppBar`da yerləşən elementlərin rəngini təyin edir.
          foregroundColor: Colors.blue,
          // ! elevation: 10 - AppBarın kölgə səviyyəsini təyin edir.
          elevation: 10.0,
          // ! shadowColor: Colors.red - AppBarın kölgə rəngini təyin edir.
          shadowColor: Colors.red,
          // ! toolbarHeight: 56.0 - AppBarın hündürlüyünü təyin edir.
          toolbarHeight: 56.0,
          // ! toolbarOpacity: 1 - AppBarın şəffaflığını təyin edir. 0-dan 1-ə qədər dəyər ala bilər.
          toolbarOpacity: 1,
        ),
        // ! backgroundColor: Colors.blueAccent - Scaffold`un arxa fon rəngini təyin edir.
        // backgroundColor: Colors.white,
      ),
    );
  }
}
