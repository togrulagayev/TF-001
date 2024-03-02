import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Example'),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemCount: 30,
          separatorBuilder: (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.all(10.0),
              child: Divider(
                color: Colors.black,
                thickness: 5,
              ),
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.indigo[100],
              child: ListTile(
                iconColor: Colors.deepPurple.shade400,
                title: Text('Person ${index + 1}'),
                subtitle: const Text('+994 55 555 55 55'),
                // ! isThreeLine - ListTile() vidgeti üçün 3 sətirli məlumatlar göstərmək üçün istifadə olunur.
                isThreeLine: true,
                trailing: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.video_call),
                    SizedBox(width: 30),
                    Icon(Icons.call),
                  ],
                ),
                leading: const CircleAvatar(
                  foregroundImage: NetworkImage(
                      'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671122.jpg'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// ! ListView() - Xətti şəkildə düzülmüş vidjetlərin sürüşdürülə bilən siyahısı.
// ! ListView aşağıdakı  növləri mövcuddur:
// ! 1-  ListView.builder() - Dinamik siyahılar üçün istifadə olunur.
// ! 2-  ListView.separated() - Siyahılar arasında boşluq qoymaq üçün istifadə olunur.
// ! ListView.builder() və ListView.separated() təkrarlanan vidjetlər üçün istifadə olunur.
// ! ListView.builder() və ListView.separated() kontakt siyahıları kimi təkrarlanan vidjetlər üçün istifadə olunur.


/*
body: ListView.builder(
          // ! itemCount - ListView.builder() daxilindəki elemntlərin sayını təyin edir. Yazılmadıqda elementlər sonsuza qədər davam edir.
          itemCount: 30,
          // ! itemBuilder - ListView.builder() növü üçün tələb olunan bir funksiya. Mütləqdir.
          itemBuilder: (BuildContext context, int index) {
            // ! ListTile() - vidgeti kontakt siyahılar üçün istifadə oluna bilən vidgetdir.
            return Card(
              color: Colors.indigo[100],
              child: ListTile(
                iconColor: Colors.deepPurple.shade400,
                title: Text('Person ${index + 1}'),
                subtitle: const Text('+994 55 555 55 55'),
                // ! isThreeLine - ListTile() vidgeti üçün 3 sətirli məlumatlar göstərmək üçün istifadə olunur.
                isThreeLine: true,
                trailing: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.video_call),
                    SizedBox(width: 30),
                    Icon(Icons.call),
                  ],
                ),
                leading: const CircleAvatar(
                  foregroundImage: NetworkImage(
                      'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671122.jpg'),
                ),
              ),
            );
          },
        ),
*/