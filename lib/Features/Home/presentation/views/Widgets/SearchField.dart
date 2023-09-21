import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIconColor: Colors.grey,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search',
        fillColor: const Color(0xffE6E7E9),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(
              0xffE6E7E9,
            ),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(
              0xffE6E7E9,
            ),
          ),
        ),
      ),
    );
  }
}
