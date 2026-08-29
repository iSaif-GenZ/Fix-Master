import 'package:fix_master/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDropDownInput extends StatefulWidget {
  final String label;
  final String? initialValue;
  final List<String> options;
  final ValueChanged<String?>? onChanged;

  const CustomDropDownInput({
    super.key,
    required this.label,
    this.initialValue,
    this.options = const [
      'Under Inspection',
      'Under Repair',
      'Ready For Delivery',
      'Delivered',
    ],
    this.onChanged,
  });

  @override
  State<CustomDropDownInput> createState() => _CustomDropDownInputState();
}

class _CustomDropDownInputState extends State<CustomDropDownInput> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    // التأكد من أن القيمة الابتدائية موجودة داخل القائمة
    if (widget.initialValue != null && widget.options.contains(widget.initialValue)) {
      selectedValue = widget.initialValue;
    } else {
      selectedValue = widget.options.isNotEmpty ? widget.options.first : null;
    }
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
        ),
        const SizedBox(height: 8.0),

        TapRegion(
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          child: DropdownButtonFormField<String>(
            initialValue: selectedValue,
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.darkBlue,
              size: 24,
            ),
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
            dropdownColor: Colors.white,
            borderRadius: BorderRadius.circular(12),
            elevation: 3,
            isExpanded: true,

            items: widget.options.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(fontSize: 16, color: Colors.black87),
                ),
              );
            }).toList(),

            onChanged: (newValue) {
              setState(() {
                selectedValue = newValue;
              });
              if (widget.onChanged != null) {
                widget.onChanged!(newValue);
              }
            },

            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.offWhite.withAlpha(80),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: AppColors.mediumBlue,
                  width: 2.0,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.redAccent,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}