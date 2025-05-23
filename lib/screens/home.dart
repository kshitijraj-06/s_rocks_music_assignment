import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:s_rocks_music/screens/music_production.dart';
import 'package:s_rocks_music/utils/Widget.dart';
import 'package:s_rocks_music/service/home_service.dart';
import 'package:get/get.dart';
import 'package:s_rocks_music/utils/bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181926),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFA90140), Color(0xFF550120)],
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: GoogleFonts.syne(color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                            filled: true,
                            fillColor: const Color(0xFF2F2F39),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: const Icon(Icons.search, color: Colors.white, size: 26),
                            suffixIcon: const Icon(Icons.mic, color: Colors.white, size: 26),
                            hintText: 'Search "Punjabi Lyrics"',
                            hintStyle: GoogleFonts.syne(color: const Color(0xFF61616B)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 22,
                        child: Image.asset('assets/profile.png',
                        scale: 0.75,),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                        top: 130,
                        left: -30,
                        child: Image.asset('assets/cd.png', scale: 1.7),
                      ),
                      Positioned(
                        left: 100,
                        right: 100,
                        child: Image.asset('assets/center.png', scale: 0.8),
                      ),
                      Positioned(
                        top: 100,
                        right: -50,
                        child: Image.asset('assets/piano.png', scale: 1.7),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14,),
          Text('Hire hand-picked Pros for popular music services',
          style: GoogleFonts.syne(
            fontSize: 17,
            color: Colors.white,
          ),),
          Expanded(
            child: Obx(() {
              if (homeController.isLoading.value) {
                return const Center(
                    child: LoadingIndicator(
                        indicatorType: Indicator.ballClipRotatePulse,

                    )
                );
              }
              if (homeController.services.isEmpty) {
                return Center(
                  child: Text(
                    'No services found.',
                    style: GoogleFonts.syne(color: Colors.white70),
                  ),
                );
              }
              return ListView.separated(
                padding: const EdgeInsets.all(10),
                itemCount: homeController.services.length,
                separatorBuilder: (_, __) => const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final service = homeController.services[index];
                  return GestureDetector(
                    onTap: (){
                      Get.to(MusicProduction(title: service.title,));
                    },
                    child: ServiceCard(title: service.title,
                        description: service.description,
                        iconData: service.iconData,
                        bgImage: service.bgImage
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar()
    );
  }
}
