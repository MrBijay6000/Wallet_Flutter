import 'package:flutter/material.dart';
import 'package:wallet/data/flight.dart';

import '../models/flightdropdown.dart';

class FlightScreen extends StatefulWidget {
  const FlightScreen({super.key});

  @override
  State<FlightScreen> createState() => _FlightScreenState();
}

class _FlightScreenState extends State<FlightScreen> {
  var _selectedCategory = categories[Categories.vegetables]!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flight Screen'),
        backgroundColor: const Color(0xFF41a124),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          child: Column(
            children: [
              const Text(
                'From',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'jhgfds',
                  label: Text('From'),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Expanded(
                  //   child: TextFormField(
                  //     decoration: const InputDecoration(
                  //       label: Text('Quantity'),
                  //     ),
                  //     keyboardType: TextInputType.number,
                  //     initialValue: _enteredQuantity.toString(),
                  //     validator: (value) {
                  //       if (value == null ||
                  //           value.isEmpty ||
                  //           int.tryParse(value) == null ||
                  //           int.tryParse(value)! <= 0) {
                  //         return 'Must be a valid, positive number.';
                  //       }
                  //       return null;
                  //     },
                  //     onSaved: (value) {
                  //       _enteredQuantity = int.parse(value!);
                  //     },
                  //   ),
                  // ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: DropdownButtonFormField(
                      value: _selectedCategory,
                      items: [
                        for (final category in categories.entries)
                          DropdownMenuItem(
                            value: category.value,
                            child: Row(
                              children: [
                                Container(
                                  width: 16,
                                  height: 16,
                                  color: category.value.color,
                                ),
                                const SizedBox(width: 6),
                                Text(category.value.title),
                              ],
                            ),
                          ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedCategory = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
