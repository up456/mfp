import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final String title;

  const ContentCard({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: const Color.fromARGB(255, 119, 119, 119),
          ),
          borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Icon(
              Icons.square_rounded,
              color: Color.fromARGB(255, 119, 119, 119),
              size: 60.0,
            ),
            const SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 119, 119, 119),
              size: 30.0,
            )
          ],
        ),
      ),
    );
  }
}
