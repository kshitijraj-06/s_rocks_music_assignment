import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';


class ServiceCard extends StatelessWidget{
  final String title;
  final String description;
  final String iconData;
  final String bgImage;

  const ServiceCard({
    required this.title,
    required this.description,
    required this.iconData,
    required this.bgImage,
  });

  @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 1),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: Stack(
            children: [
              Container(
                height: 95,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(bgImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned.fill(
                child: Container(
                  color: Color(0xFF2C2D31).withValues(alpha: 0.85)
                ),
              ),
              Container(
                height: 95,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Image.asset(iconData, scale: 0.7,),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: GoogleFonts.syne(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            description,
                            style: GoogleFonts.syne(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset('assets/arrow.png',
                    scale: 0.7,)
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }