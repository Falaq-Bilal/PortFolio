import 'package:flutter/material.dart';


class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400, // dialog ka fixed width
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Contact Me",
              style: Theme.of(context).textTheme.headlineSmall),

          const SizedBox(height: 20),

          // Name Field
          TextField(
            decoration: InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 15),

          // Email Field
          TextField(
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 15),

          // Message Field
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              labelText: "Message",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Submit Button
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // dialog band karne ke liye
            },
            child: const Text("Send Message"),
          ),
        ],
      ),
    );
  }
}
