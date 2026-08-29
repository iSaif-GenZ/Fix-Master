import 'package:flutter/material.dart';

class AppInputField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final int maxLines;
  final bool readOnly;


  AppInputField({
    super.key,
    required this.label,
    this.maxLines = 1,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.readOnly = false,  
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold, color: Colors.black54),
        ),
        const SizedBox(height: 8.0),
        TextFormField(
          readOnly: readOnly,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black
          ),
          keyboardType: keyboardType,
          controller: controller,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          maxLines: maxLines,
          decoration: InputDecoration(
            
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1.0,
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 2.0
              )
            ),
            

            
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
          ),
        ),
      ],
    );
  }
}
