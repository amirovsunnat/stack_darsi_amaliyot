import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI UX Design"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: SizedBox(
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        width: double.infinity,
                        "assets/images/logo1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(0.6),
                              Colors.white60.withOpacity(0.6),
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            videoNavBar(),
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: SizedBox(
                                    height: 5,
                                    width: double.infinity,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: SizedBox(
                                    height: 5,
                                    width: 160,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 6),
                                    child: SizedBox(
                                      height: 12,
                                      width: 12,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.white,
                                              blurRadius: 5,
                                              offset: Offset(
                                                5,
                                                3,
                                              ),
                                            ),
                                            BoxShadow(
                                              color: Colors.white54,
                                              blurRadius: 3,
                                              offset: Offset(
                                                3,
                                                5,
                                              ),
                                            ),
                                          ],
                                          color: Color(0xFF7758F7),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                      left: 160,
                      right: 160,
                      child: IconButton.filled(
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_arrow,
                          color: Color(0xFF7758F7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row videoNavBar() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.cast_outlined,
          size: 26,
          color: Colors.white,
        ),
        Icon(
          size: 26,
          Icons.skip_previous_outlined,
          color: Colors.white,
        ),
        Icon(
          size: 26,
          Icons.skip_next_outlined,
          color: Colors.white,
        ),
        Icon(
          size: 26,
          Icons.fullscreen_rounded,
          color: Colors.white,
        ),
      ],
    );
  }
}
