import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lesson47/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final Function() onEdit;
  final Function() onDelete;
  const ProductItem({
    super.key,
    required this.product,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.title,
                  style: const TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: onEdit,
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.blue,
                      ),
                    ),
                    IconButton(
                      onPressed: onDelete,
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
