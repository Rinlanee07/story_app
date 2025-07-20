import 'package:flutter/material.dart';
import '../story_data.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  String currentKey = 'start';

  @override
  Widget build(BuildContext context) {
    final currentStory =
        storyData[currentKey] ?? {'text': 'ไม่พบเนื้อเรื่อง', 'choices': []};
    final choices = currentStory['choices'] as List;

    return Scaffold(
      appBar: AppBar(title: const Text('Story')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentStory['text'],
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            for (var choice in choices)
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentKey = choice['next'];
                    if (currentKey.contains('ending')) {
                      Navigator.pushReplacementNamed(context, '/ending');
                    }
                  });
                },
                child: Text(choice['label']),
              ),
          ],
        ),
      ),
    );
  }
}
