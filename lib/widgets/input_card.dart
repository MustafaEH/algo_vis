import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputCard extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData icon;
  final String buttonText;
  final VoidCallback? onButtonPressed;
  final TextEditingController? controller;

  const InputCard({
    super.key,
    required this.label,
    required this.hintText,
    required this.icon,
    required this.buttonText,
    this.onButtonPressed,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.r)),
      child: Padding(
        padding: EdgeInsets.all(18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10.h),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: Icon(icon),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                hintText: hintText,
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  backgroundColor: Colors.indigo[700],
                ),
                onPressed: onButtonPressed,
                icon: Icon(Icons.sort, size: 22.sp),
                label: Text(buttonText, style: TextStyle(fontSize: 18.sp)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
