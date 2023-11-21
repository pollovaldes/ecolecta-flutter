import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScanResult extends StatelessWidget {
  const ScanResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado del escaneo'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          CachedNetworkImage(
            imageUrl: 'https://i.imgur.com/BxwLFXZ.png',
            placeholder: (context, url) => const CupertinoActivityIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            height: 250.0,
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(height: 16.0),
          const Center(
            child: Text(
              'PAM',
              style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 8.0),
          const Center(
            child: Text(
              'Aceite vegetal en aerosol.',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const SizedBox(height: 8.0),
          const Center(
            child: Text(
              'CONT. NET.170g',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const SizedBox(height: 12.0),
          const Center(
            child: Text(
              'Categoría',
              style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
            ),
          ),
          const Center(
            child: Text(
              'Aluminio',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
