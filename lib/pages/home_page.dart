import 'package:flutter/material.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 0, 0, 0),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical:
                    100), // Uso de padding vertical para centrar el contenido
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                    height:
                        20), // Uso de SizedBox para dar espacios entre los elementos
                ClipOval(
                  child: Image.asset(
                    'img/logo.png',
                    fit: BoxFit.scaleDown,
                    width: 325,
                    height: 200,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  'Welcome to king Leon Arcade Quest the best platform to buy xbox and play station games.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    letterSpacing: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Welcome User',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(
                            color: const Color.fromARGB(255, 253, 253, 253)),
                      ),
                      overlayColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 37, 185, 196).withOpacity(0.3)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      elevation: MaterialStateProperty.all<double>(4),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: const Text(
                      'START',
                      style: TextStyle(
                        color: Color.fromARGB(255, 41, 41, 41),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
