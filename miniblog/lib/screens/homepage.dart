import 'package:flutter/material.dart';
import 'package:miniblog/screens/add_blog.dart';
import 'package:miniblog/screens/list_blog.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ana Sayfa"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => const AddBlog()));
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: const ListBlog(),
    );
  }
}