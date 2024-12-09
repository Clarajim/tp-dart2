import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
            const Expanded(
                flex: 2,
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.center, // Change de start à center
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
              'a propos des guitars',
              style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      height: 5,
                    ),
                  ),
                
                     Text(
                      'Cette guitare est une starocaster electrique',
                      style: TextStyle(fontSize: 16),
                    ),
                     SizedBox(height: 170),// espace entre les textes
                     Text(
                      'cette guitare est une gibson sg rouge',
                      style: TextStyle(fontSize: 16),
                    ),
                     SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Color.fromARGB(255, 3, 10, 112)),
                        Icon(Icons.star, color: Color.fromARGB(255, 3, 10, 112)),
                        Icon(Icons.star, color: Color.fromARGB(255, 3, 10, 112)),
                        Icon(Icons.star, color: Color.fromARGB(255, 3, 10, 112)),
                        Icon(Icons.star_half, color: Color.fromARGB(255, 3, 10, 112)),
                        SizedBox(width: 250),
                        Text('485 Reviews'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InfoCard(icon: Icons.music_note, label: 'écoute :', value: '18 min'),
                        InfoCard(icon: Icons.electric_bolt, label: 'electrique :', value: 'indefini'),
                        InfoCard(icon: Icons.music_video_rounded, label: 'enregistrement :', value: 'indefini'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'Images/guitar.jpg', 
                        width: 300,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: Image.asset(
                        'Images/guitar2.jpg', 
                        width: 300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoCard({
    required this.icon,
    required this.label,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey[700]),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(value, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}



//projet à mettre dans un autre fichier



