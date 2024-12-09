import 'package:flutter/material.dart';

void main() {
  runApp(const MonApp());
}

class MonApp extends StatelessWidget {
  const MonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Jojo's bizzare adventure",
      home: const PremierEcran(),
    );
  }
}

// Premier écran
// class PremierEcran extends StatelessWidget {
//   const PremierEcran({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Image de fond en pleine page
//           Positioned.fill(
//             child: Image.asset(
//               'Assets/Images/ippo.jpg', // Image pour le premier écran
//               fit: BoxFit.cover,
//             ),
//           ),
//           // Bande transparente avec texte
//           Align(
//             alignment: Alignment.topCenter,
//             child: Container(
//               color: Colors.black.withOpacity(0.0),
//               padding: const EdgeInsets.all(20),
//               child: const Text(
//                 "Bienvenue sur ma page !",
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//           // Bouton centré
//           Center(
//             child: ElevatedButton(
//               onPressed: () {
//                 // Navigation vers le deuxième écran
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const DeuxiemeEcran()),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//                 padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//               ),
//               child: const Text(
//                 "Clique ici",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class PremierEcran extends StatelessWidget {
  const PremierEcran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image de fond en pleine page
          Positioned.fill(
            child: Image.asset(
              'Images/jojobizzare.jpg', // Image pour le premier écran
              fit: BoxFit.cover,
            ),
          ),
          // Bande transparente avec texte
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Colors.black.withOpacity(0.5),
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 233, 212, 212),
                ),
              ),
            ),
          ),
          // Bouton en bas
          Align(
            alignment: Alignment.bottomCenter, // Position en bas
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0), // Marges en bas
              child: ElevatedButton(
                onPressed: () {
                  // Navigation vers le deuxième écran
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DeuxiemeEcran()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 240, 228, 228),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: const Text(
                  "Clique",
                  style: TextStyle(color: Color.fromARGB(255, 100, 3, 3)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class DeuxiemeEcran extends StatelessWidget {
  const DeuxiemeEcran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image de fond pour le deuxième écran
          Positioned.fill(
            child: Image.network(
              'https://i.imgflip.com/33rzta.jpg?a481512', // Image pour le deuxième écran
              fit: BoxFit.contain,
            ),
          ),
          // Bande transparente avec texte
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Colors.black.withOpacity(0.0),
              padding: const EdgeInsets.all(20),
              child: const Text(
                "NIGERUNDAYO !",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 73, 3, 3),
                ),
              ),
            ),
          ),
          // Bouton en bas de la page
          Align(
            alignment: Alignment.bottomCenter, // Position en bas
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0), // Marges en bas
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Retour au premier écran
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 208, 190, 190),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: const Text(
                  "Clique ici pour revenir en arrière",
                  style: TextStyle(color: Color.fromARGB(255, 70, 5, 5)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}