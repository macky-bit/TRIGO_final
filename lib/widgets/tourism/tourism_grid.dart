import 'package:flutter/material.dart';
import 'place_card.dart';

class TourismGrid extends StatelessWidget {
  const TourismGrid({super.key});

  // TODO: Replace placeholder colors with real Image.asset() paths later
  static const List<Map<String, dynamic>> _places = [
    {
      'name': 'Tangadan Falls',
      'location': 'San Juan, La Union',
      'rating': '4.8',
      'color': Color(0xFF1A4A3A), // placeholder — replace with image
    },
    {
      'name': 'Ma-Cho Temple',
      'location': 'San Juan, La Union',
      'rating': '4.7',
      'color': Color(0xFF2A3A5A),
    },
    {
      'name': 'San Juan Surf Resort',
      'location': 'San Juan, La Union',
      'rating': '4.6',
      'color': Color(0xFF1A3A4A),
    },
    {
      'name': 'Thunderbird Resorts',
      'location': 'San Juan, La Union',
      'rating': '4.5',
      'color': Color(0xFF2A2A4A),
    },
    {
      'name': 'Poro Point Lighthouse',
      'location': 'San Juan, La Union',
      'rating': '4.6',
      'color': Color(0xFF1A4A4A),
    },
    {
      'name': 'Grape Farms',
      'location': 'San Juan, La Union',
      'rating': '4.3',
      'color': Color(0xFF2A4A1A),
    },
    {
      'name': 'Baluarte Watch Tower',
      'location': 'San Juan, La Union',
      'rating': '4.4',
      'color': Color(0xFF3A2A1A),
    },
    {
      'name': 'Flotsam & Jetsam Hostel',
      'location': 'San Juan, La Union',
      'rating': '4.6',
      'color': Color(0xFF3A1A2A),
    },
    {
      'name': 'Manila North Road Murals',
      'location': 'San Juan, La Union',
      'rating': '4.5',
      'color': Color(0xFF1A2A3A),
    },
    {
      'name': 'Kamay na Bato',
      'location': 'San Juan, La Union',
      'rating': '4.5',
      'color': Color(0xFF2A3A1A),
    },
    {
      'name': 'Immuki Island',
      'location': 'San Juan, La Union',
      'rating': '4.7',
      'color': Color(0xFF1A3A3A),
    },
    {
      'name': 'Urbiztondo Beach',
      'location': 'San Juan, La Union',
      'rating': '4.6',
      'color': Color(0xFF3A2A2A),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.72,
      ),
      itemCount: _places.length,
      itemBuilder: (context, i) => PlaceCard(place: _places[i]),
    );
  }
}