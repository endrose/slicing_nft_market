import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:slicing_nft_market/constants/app_pallete.dart';

class InputWidget extends StatelessWidget {
  final String text;
  final bool? isObsecure;

  const InputWidget({
    super.key,
    required this.text,
    this.isObsecure,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.inter(
            color: textPrimary,
            fontSize: 16,
          ),
        ),
        TextField(
          obscureText: isObsecure ?? false,
          decoration: InputDecoration(
            fillColor: const Color(0xFFF7F9FC),
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(
                  16,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  16,
                ),
                borderSide: const BorderSide(
                  color: colorPrimary,
                )),
          ),
          style: GoogleFonts.inter(
            color: textPrimary,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          cursorColor: textPrimary,
        ),
        const Gap(20)
      ],
    );
  }
}
