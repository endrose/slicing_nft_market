import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:slicing_nft_market/constants/app_pallete.dart';

class ButtonWidget extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;
  final bool isFullWith;

  const ButtonWidget({
    Key? key,
    required this.name,
    required this.onPressed,
    this.isFullWith = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          minimumSize: isFullWith ? const Size.fromHeight(51) : null,
          backgroundColor: colorPrimary,
          foregroundColor: colorWhite,
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
            16,
          ))),
      child: Text(
        name,
        style: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
