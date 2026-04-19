import 'package:flutter/material.dart';

class MaintenanceScreen extends StatelessWidget {
  final String featureName;
  final String? description;

  const MaintenanceScreen({
    super.key,
    required this.featureName,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0E8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F0E8),
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.06),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(0xFF1A1A1A),
              size: 16,
            ),
          ),
        ),
        title: Text(
          featureName.toUpperCase(),
          style: const TextStyle(
            color: Color(0xFF003366),
            fontSize: 11,
            fontFamily: 'Courier New',
            letterSpacing: 2.5,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFF003366).withValues(alpha: 0.10),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.construction_rounded,
                  color: Color(0xFF003366),
                  size: 48,
                ),
              ),
              const SizedBox(height: 28),

              // Title
              Text(
                'Under Maintenance',
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 24,
                  fontFamily: 'Georgia',
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),

              // Feature name
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 14, vertical: 5),
                decoration: BoxDecoration(
                  color: const Color(0xFF003366).withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  featureName,
                  style: const TextStyle(
                    color: Color(0xFF003366),
                    fontSize: 12,
                    fontFamily: 'Courier New',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Description
              Text(
                description ??
                    'This feature is currently not available. Our team is working hard to bring it to you soon. Please check back later.',
                style: const TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 13,
                  fontFamily: 'Courier New',
                  height: 1.7,
                  letterSpacing: 0.3,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 36),

              // Divider with OR
              Row(
                children: [
                  const Expanded(
                      child: Divider(color: Color(0xFFCCC5B5))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      'COMING SOON',
                      style: TextStyle(
                        color: Color(0xFF003366),
                        fontSize: 9,
                        fontFamily: 'Courier New',
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  const Expanded(
                      child: Divider(color: Color(0xFFCCC5B5))),
                ],
              ),
              const SizedBox(height: 28),

              // Go back button
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: double.infinity,
                  height: 52,
                  decoration: BoxDecoration(
                    color: const Color(0xFF90EE90),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Center(
                    child: Text(
                      'GO BACK',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 15,
                        fontFamily: 'Courier New',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 3,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}