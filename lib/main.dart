import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kartu Mahasiswa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF12B8B0),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const StudentCardPage(),
    );
  }
}

class StudentCardPage extends StatelessWidget {
  const StudentCardPage({super.key});

  static const _navy = Color(0xFF17324D);
  static const _teal = Color(0xFF12B8B0);
  static const _orange = Color(0xFFFF795E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFFFF1B8), Color(0xFFFFD9C7), Color(0xFFB9F2E8)],
          ),
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                children: [
                  Positioned(
                    top: 18,
                    right: -34,
                    child: _colorOrb(
                      124,
                      const Color(0xFFFFB84D).withValues(alpha: 0.38),
                    ),
                  ),
                  Positioned(
                    bottom: 28,
                    left: -38,
                    child: _colorOrb(
                      142,
                      const Color(0xFF12B8B0).withValues(alpha: 0.25),
                    ),
                  ),
                  SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 24,
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight - 48,
                      ),
                      child: Center(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 410),
                          child: _studentCard(),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _colorOrb(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }

  Widget _studentCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(26, 30, 26, 26),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.96),
        borderRadius: BorderRadius.circular(34),
        border: Border.all(color: Colors.white, width: 2),
        boxShadow: [
          BoxShadow(
            color: _navy.withValues(alpha: 0.16),
            blurRadius: 35,
            offset: const Offset(0, 18),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [_orange, Color(0xFFFFB84D)],
                  ),
                ),
                child: const Icon(
                  Icons.school_rounded,
                  color: Colors.white,
                  size: 23,
                ),
              ),
              const SizedBox(width: 12),
              const Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'UNIVERSITAS SURYAKENCANA',
                      style: TextStyle(
                        color: _navy,
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.35,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'FAKULTAS TEKNIK',
                      style: TextStyle(
                        color: _teal,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 28),
          Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [_teal, Color(0xFF77DCCB), _orange],
              ),
              boxShadow: [
                BoxShadow(
                  color: _teal.withValues(alpha: 0.25),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/profile_photo.png',
                key: const ValueKey('profile-photo'),
                width: 210,
                height: 210,
                fit: BoxFit.cover,
                alignment: const Alignment(0, -0.15),
                semanticLabel: 'Foto Mohamad Agip Jenaro',
              ),
            ),
          ),
          const SizedBox(height: 26),
          const Text(
            'Mohamad Agip Jenaro',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: _navy,
              fontSize: 28,
              height: 1.12,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.2,
            ),
          ),
          const SizedBox(height: 13),
          Container(
            width: 54,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: const LinearGradient(colors: [_orange, _teal]),
            ),
          ),
          const SizedBox(height: 13),
          const Text(
            'TEKNIK INFORMATIKA',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF59849A),
              fontSize: 15,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.3,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                colors: [_teal, Color(0xFF47C9B2)],
              ),
              boxShadow: [
                BoxShadow(
                  color: _teal.withValues(alpha: 0.25),
                  blurRadius: 12,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: const Text(
              'KARTU MAHASISWA',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w800,
                letterSpacing: 1.1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
