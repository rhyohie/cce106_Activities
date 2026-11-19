import 'package:flutter/material.dart';

void main() {
  runApp(const WaterTrackerApp());
}

class WaterTrackerApp extends StatelessWidget {
  const WaterTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Water Tracker',
      debugShowCheckedModeBanner: false,
      home: WaterTrackerPage(),
    );
  }
}

class WaterTrackerPage extends StatelessWidget {
  const WaterTrackerPage({super.key});

  // Reference layout: 400 wide, 580 tall (60 app bar + 520 body).
  static const double designWidth = 400;
  static const double designHeight = 580;

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.sizeOf(context);
    final double w = screen.width;

    // One scale factor for heights, fonts, icon, and radii.
    // The tighter dimension wins, so the content always fits.
    final double sw = screen.width / designWidth;
    final double sh = screen.height / designHeight;
    final double s = sw < sh ? sw : sh;

    // Horizontal insets as a share of the window width (from the reference).
    final double tipInset = w * 0.06; // tip boxes: close to the edge
    final double cardInset = w * 0.127; // main card: inset a bit more

    return Scaffold(
      backgroundColor: const Color(0xFFEFF3F7),
      appBar: AppBar(
        title: Text(
          'Water Tracker',
          style: TextStyle(fontSize: 22 * s, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF3C63C8),
        foregroundColor: Colors.white,
        toolbarHeight: 60 * s,
      ),
      // FittedBox is a safety net: if anything is ever slightly too big,
      // it shrinks instead of overflowing or needing a scroll bar.
      body: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 12 * s),

              // Water drop icon
              Icon(
                Icons.water_drop,
                size: 84 * s,
                color: const Color(0xFF409EFF),
              ),

              SizedBox(height: 8 * s),

              // Title and subtitle
              Text(
                'Stay Hydrated!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28 * s,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF111827),
                ),
              ),
              SizedBox(height: 4 * s),
              Text(
                'Build a healthy daily habit',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18 * s,
                  color: const Color(0xFF4B5563),
                ),
              ),

              SizedBox(height: 20 * s),

              // Daily goal card (inset more than the tip boxes)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: cardInset),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 18 * s),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18 * s),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Daily Water Goal',
                        style: TextStyle(
                          fontSize: 18 * s,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF4B5563),
                        ),
                      ),
                      Text(
                        '8',
                        style: TextStyle(
                          fontSize: 72 * s,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF2848B5),
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'glasses per day',
                        style: TextStyle(
                          fontSize: 17 * s,
                          color: const Color(0xFF4B5563),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 13 * s),

              // Tip boxes (close to the edges)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: tipInset),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15 * s),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDBE8FC),
                    borderRadius: BorderRadius.circular(10 * s),
                  ),
                  child: Text(
                    'Drink water regularly',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18 * s,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1E3A9F),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 9 * s),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: tipInset),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15 * s),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDBE8FC),
                    borderRadius: BorderRadius.circular(10 * s),
                  ),
                  child: Text(
                    'Bring your water bottle',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18 * s,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1E3A9F),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 14 * s),

              // Footer text
              Text(
                'Every glass counts!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13 * s,
                  color: const Color(0xFF4B5563),
                ),
              ),

              SizedBox(height: 14 * s),
            ],
          ),
        ),
      ),
    );
  }
}
