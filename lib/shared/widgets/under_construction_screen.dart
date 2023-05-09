import 'package:flutter/material.dart';

class UnderConstructionScreen extends StatelessWidget {
  final String featureName;

  const UnderConstructionScreen({
    required this.featureName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(featureName)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '$featureName are under construction',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            const Icon(Icons.construction, size: 40),
          ],
        ),
      ),
    );
  }
}
