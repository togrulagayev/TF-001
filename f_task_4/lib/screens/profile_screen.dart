import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
          onPressed: () {},
        ),
        title: Text(
          'flutter',
          style: GoogleFonts.roboto()
              .copyWith(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        actions: const [
          FaIcon(
            FontAwesomeIcons.bell,
            size: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0, left: 20.0),
            child: FaIcon(
              FontAwesomeIcons.ellipsis,
              size: 20,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[800],
                  radius: 47,
                  child: const CircleAvatar(
                    radius: 45,
                    foregroundImage: NetworkImage(
                      'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671122.jpg',
                    ),
                  ),
                ),
                const ProfileStaticsWidget(count: 9999, title: 'posts'),
                const ProfileStaticsWidget(count: 9999, title: 'followers'),
                const ProfileStaticsWidget(count: 9999, title: 'following'),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'App Development | Programming | Flutter | Tech | Developer 🦋',
              style: GoogleFonts.roboto()
                  .copyWith(fontWeight: FontWeight.w100, fontSize: 16),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              style: ButtonStyle(
                foregroundColor: const MaterialStatePropertyAll(Colors.white),
                backgroundColor: MaterialStatePropertyAll(Colors.grey.shade900),
              ),
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.threads),
              label: const Text('flutter'),
            ),
            Text(
              'Community',
              style: GoogleFonts.roboto()
                  .copyWith(fontWeight: FontWeight.w100, fontSize: 16),
            ),
            Text(
              'Reach out to the community for help and support during your coding journey.',
              style: GoogleFonts.roboto()
                  .copyWith(fontWeight: FontWeight.w100, fontSize: 16),
            ),
            Text(
              'Joined 1 year ago',
              style: GoogleFonts.roboto()
                  .copyWith(fontWeight: FontWeight.w100, fontSize: 16),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.link),
              label: const Text('flutter.dev'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    maximumSize: const MaterialStatePropertyAll(Size(100, 40)),
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.all(8),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.grey.shade900),
                  ),
                  child: const Row(
                    children: [
                      Text('Following'),
                      SizedBox(width: 5),
                      FaIcon(
                        FontAwesomeIcons.angleDown,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.grey.shade900),
                  ),
                  child: const Text('Message'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.grey.shade900),
                  ),
                  child: const Text('Contact'),
                ),
                Expanded(
                  child: IconButton(
                    style: ButtonStyle(
                      maximumSize: const MaterialStatePropertyAll(Size(40, 40)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.grey.shade900),
                    ),
                    onPressed: () {},
                    iconSize: 16,
                    icon: const FaIcon(FontAwesomeIcons.userPlus),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProfileStaticsWidget extends StatelessWidget {
  final int count;
  final String title;
  const ProfileStaticsWidget({
    super.key,
    required this.count,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: GoogleFonts.roboto()
              .copyWith(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        Text(
          title,
          style: GoogleFonts.roboto()
              .copyWith(fontWeight: FontWeight.w100, fontSize: 16),
        ),
      ],
    );
  }
}
