import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final Map<String, dynamic> place;

  const PlaceCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF182628),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: const Color(0xFF1F3538), width: 1),
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image area — replace Container with Image.asset() later
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // TODO: Replace with:
                  // Image.asset('assets/images/places/${place['image']}',
                  //   fit: BoxFit.cover)
                  Container(color: place['color'] as Color),

                  // Rating badge
                  Positioned(
                    bottom: 6,
                    left: 6,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 3),
                      decoration: BoxDecoration(
                        color: const Color(0xFF111C1D).withValues(alpha: 0.85),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: const Color(0xFFF5A623).withValues(alpha: 0.5),
                          width: 0.8,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Color(0xFFF5A623),
                            size: 9,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            place['rating'] as String,
                            style: const TextStyle(
                              color: Color(0xFFF5A623),
                              fontSize: 9,
                              fontFamily: 'Courier New',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Info area
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 7, 8, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place['name'] as String,
                    style: const TextStyle(
                      color: Color(0xFFF5F0E8),
                      fontSize: 11,
                      fontFamily: 'Georgia',
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Color(0xFF7AABB0),
                        size: 9,
                      ),
                      const SizedBox(width: 2),
                      Expanded(
                        child: Text(
                          place['location'] as String,
                          style: const TextStyle(
                            color: Color(0xFF7AABB0),
                            fontSize: 9,
                            fontFamily: 'Courier New',
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}