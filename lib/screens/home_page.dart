// lib/screens/home_page.dart
import 'package:flutter/material.dart';
import '../models/destination_model.dart';
import '../widgets/destination_card.dart';

const List<Destination> destinations = [
  Destination(
    name: "Bintan Mountain",
    imageUrl:
        "https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=400&h=300&fit=crop",
    rating: 4.7,
    category: "Nature",
    location: "Bintan, Kepulauan Riau",
  ),
  Destination(
    name: "Trikora Beach",
    imageUrl:
        "https://images.unsplash.com/photo-1571896349842-33c89424de2d?w=400&h=300&fit=crop",
    rating: 4.5,
    category: "Beach",
    location: "Bintan, Kepulauan Riau",
  ),
  Destination(
    name: "Penyengat Island",
    imageUrl:
        "https://images.unsplash.com/photo-1559827260-dc66d52bef19?w=400&h=300&fit=crop",
    rating: 4.5,
    category: "Culture and History",
    location: "Tanjungpinang, Kepulauan Riau",
  ),
  Destination(
    name: "Tepi Laut",
    imageUrl:
        "https://images.unsplash.com/photo-1618788387995-79b2c3571e84?w=400&h=300&fit=crop",
    rating: 4.5,
    category: "Recreation Park",
    location: "Tanjungpinang, Kepulauan Riau",
  ),
  Destination(
    name: "Senggarang Institute of Technology",
    imageUrl:
        "https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=400&h=300&fit=crop",
    rating: 4.5,
    category: "YTTA",
    location: "Tanjungpinang, Kepulauan Riau",
  ),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue.shade400,
                    child: const Icon(Icons.person, color: Colors.white),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Uchiha Ujang',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.notifications_outlined),
                  ),
                ],
              ),
            ),

            // Konten utama
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Hero Text
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          height: 1.2,
                        ),
                        children: [
                          const TextSpan(text: 'Explore the\n'),
                          const TextSpan(text: 'Beauty of '),
                          TextSpan(
                            text: 'Bintan Island',
                            style: TextStyle(
                              color: Colors.orange.shade600,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.orange.shade600,
                              decorationThickness: 3,
                            ),
                          ),
                          const TextSpan(text: '!'),
                        ],
                      ),
                    ),

                    const SizedBox(height: 40),
                    // Judul section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Best Destination',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View all',
                            style: TextStyle(
                              color: Colors.blue.shade600,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    // List destinasi
                    SizedBox(
                      height: 320,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: destinations.length,
                        itemBuilder: (context, index) {
                          return DestinationCard(
                            destination: destinations[index],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
