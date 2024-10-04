import 'package:flutter/material.dart';
import 'package:hommy/main_screen.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Image.asset(
            "images/home3.jpeg",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Colors.transparent,
                Color.fromARGB(255, 10, 60, 100),
              ])),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FadeTransition(
              opacity: _animation,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                    bottom: 10, left: 20, right: 20, top: 30),
                child: const Text(
                  "Find Your Dream House",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Poppins',
                      fontSize: 44,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
            FadeTransition(
              opacity: _animation,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                  bottom: 10,
                  left: 20,
                  right: 20,
                ),
                child: const Text(
                  "Find your home easily and make your dreams come true.",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
            FadeTransition(
              opacity: _animation,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainScreenApp()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 27, 121, 199),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            FadeTransition(
              opacity: _animation,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(
                      bottom: 60, left: 20, right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 27, 121, 199),
                              decoration: TextDecoration.none),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
