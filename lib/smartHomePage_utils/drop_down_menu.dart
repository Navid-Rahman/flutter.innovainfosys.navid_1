import 'package:flutter/material.dart';

// Class for creating a dropdown menu item
class DropDownMenu {
  // Method to build a popup menu item
  static PopupMenuItem<String> buildMenuItem(String value, String label) {
    return PopupMenuItem<String>(
      // Assigning the value of the menu item
      value: value,
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 20, 19, 20),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffd8e4e8),
          border: Border.all(
            color: const Color(0xff404040),
          ),
        ),
        child: Text(
          // Label text of the menu item
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.08,
            color: Color(0xFF404040),
          ),
        ),
      ),
    );
  }
}
