import 'package:flutter/material.dart';
import '../utils/frosted_glass.dart';
import 'dart:ui';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Fondo(),
          Center(child: Contenido()),
          //Se aplica centrado del contenido mediante el widget Center.
        ],
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({Key? key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        child: const FrostedGlassBox(
          theWidth: double.infinity,
          theHeigth: 700, // Se ajusta la altura del contenedor en theHeigth.
          theChild: Padding(
            padding: EdgeInsets.all(15.0),
            child: Form(),
          ),
        ),
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  //Se aplica la técnica de fondo oscuro mediante el widget Fondo.S
  const Fondo({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(253, 0, 0, 0),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key});

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  bool obs = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
              height: 20), //Se agrega un SizedBox para dar espacio vertical.
          Text(
            'Sign in to DEVELOPER.NET and continue',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Enter your user and password below to continue to the kingLeon Arcade Quest and let learning begin!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              letterSpacing: 1,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          TextFormField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.white, // Cambio del color del texto a blanco
            ),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 250, 250, 250)),
              ),
              labelText: 'Username',
              labelStyle: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              prefixIcon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            obscureText: obs,
            style: TextStyle(
              color: Colors.white, // Cambio del color del texto a blanco
            ),
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
              ),
              labelText: 'Password',
              labelStyle: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.remove_red_eye_outlined,
                    color: Colors.white),
                onPressed: () {
                  setState(() {
                    obs = !obs;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 35),
          Container(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 243, 243, 243)),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: double.infinity,
            height: 50,
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(25),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(25),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade800, // Color azul oscuro de Google
                        Colors.blue.shade800, // Color azul medio de Google
                        Colors.blue.shade800, // Color azul de Google
                        Colors.blue.shade800, // Color azul claro de Google
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.g_mobiledata_outlined, // Icono "G" de Google
                        color: Colors.white,
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Sign with Google',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 60),
          Container(
            child: Image.asset(
              'img/down.png',
              fit: BoxFit.cover,
              width: 350, // ajusta el ancho
              height: 100, // ajusta la altura
            ),
          ),
        ],
      ),
    );
  }
}
