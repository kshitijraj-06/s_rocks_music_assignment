import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  final List<String> labels = ["Home", "News", "TrackBox", "Projects"];
  final List<String> assets = [
    'assets/home.png',
    'assets/news.png',
    'assets/music.png',
    'assets/project.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 100,
      padding: const EdgeInsets.only(top: 12, bottom: 16),
      decoration: const BoxDecoration(
        color: Color(0xFF121212),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(assets.length, (index) {
          final isActive = currentIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() => currentIndex = index);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             Container(
               height: isActive ? 7 : 0,
               width: isActive ? 14 : 0,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: const BorderRadius.only(
                   bottomLeft: Radius.circular(10),
                   bottomRight: Radius.circular(10),
                 ),
               ),
                ),
                SizedBox(height: 5,),
                Image.asset(assets[index]),
                const SizedBox(height: 4),
                Text(
                  labels[index],
                  style: GoogleFonts.syne(
                    color: isActive ? Colors.white : Colors.white60,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 6),
              ],
            ),
          );
        }),
      ),
    );
  }
}
