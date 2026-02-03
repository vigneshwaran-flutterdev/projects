import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Details.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Details>(builder: (BuildContext context, p, Widget? child) {
      return Scaffold(
        body: p.Cart.isEmpty
            ? Center(child: Text('There is no items in teh cart'))
            : Expanded(
                child: ListView.builder(
                  itemCount: p.Cart.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(p.Cart[index]),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              context.read<Details>().delete(index);
                            },
                          ),
                        ],
                      ),
                    ));
                  },
                ),
              ),
      );
    });
  }
}

