import 'package:flutter/material.dart';
import 'package:saude_prime_familia/app/Pages/Login/login.dart';

class MyWelcome extends StatefulWidget {
  const MyWelcome({Key? key}) : super(key: key);

  @override
  State<MyWelcome> createState() => _MyWelcomeState();
}

class _MyWelcomeState extends State<MyWelcome> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 79, 86, 214),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Container(
            height: size.height / 1.8,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Image.asset(
              'assets/images/welcomef.png',
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Todos os especialistas em um unico App!",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    right: 100,
                  ),
                  child: Text(
                      "Encontre o seu médico e realize sua consulta com agilidade. ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      )),
                ),
                const SizedBox(
                  height: 38,
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return MyLogin();
                  })),
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
