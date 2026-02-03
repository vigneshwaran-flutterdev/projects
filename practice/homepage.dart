import 'package:flutter/material.dart';
import 'package:learning/Details.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _lists = context.watch<Details>().l;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shopping App',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _lists.length,
              itemBuilder: (context, index) {
                return Card(
                  semanticContainer: false,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          _lists[index],
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            context.read<Details>().add(_lists[index]);
                          },
                          icon: Icon(Icons.add_circle_outline),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
