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
      'image': 'Tfalls.png',
    },
    {
      'name': 'Ma-Cho Temple',
      'location': 'San Juan, La Union',
      'rating': '4.7',
      'image': 'temple.png',
    },
    {
      'name': 'San Juan Surf Resort',
      'location': 'San Juan, La Union',
      'rating': '4.6',
      'image': 'SJ_surf.png',
    },
    {
      'name': 'Thunderbird Resorts',
      'location': 'San Juan, La Union',
      'rating': '4.5',
      'image': 'Tbird.png',
    },
    {
      'name': 'Poro Point Lighthouse',
      'location': 'San Juan, La Union',
      'rating': '4.6',
      'image': 'poro_Lhouse.png',
    },
    {
      'name': 'Grape Farms',
      'location': 'San Juan, La Union',
      'rating': '4.3',
      'image': 'grape.png',
    },
    {
      'name': 'Baluarte Watch Tower',
      'location': 'San Juan, La Union',
      'rating': '4.4',
      'image': 'watch_tower.png',
    },
    {
      'name': 'Flotsam & Jetsam Hostel',
      'location': 'San Juan, La Union',
      'rating': '4.6',
      'image': 'floatS.png',
    },
    {
      'name': 'Manila North Road Murals',
      'location': 'San Juan, La Union',
      'rating': '4.5',
      'image': 'SJ_surf.png',
    },
    {
      'name': 'Kamay na Bato',
      'location': 'San Juan, La Union',
      'rating': '4.5',
      'image': 'kamay_bato.png',
    },
    {
      'name': 'Immuki Island',
      'location': 'San Juan, La Union',
      'rating': '4.7',
      'image': 'immuki.png',
    },
    {
      'name': 'Urbiztondo Beach',
      'location': 'San Juan, La Union',
      'rating': '4.6',
      'image': 'surfC.png',
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