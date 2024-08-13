import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_nft_market/constants/app_pallete.dart';

class Browse {
  final String title;
  final String image;
  final String count;
  final String item;

  Browse({
    required this.title,
    required this.image,
    required this.count,
    required this.item,
  });
}

class BrowseTileWidget extends StatelessWidget {
  final Browse browse;
  const BrowseTileWidget({
    super.key,
    required this.browse,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 140,
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.network(
                    browse.image,
                  ).image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      browse.title,
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Gap(8),
                    Text(
                      '${browse.count} ${browse.item}',
                      style: GoogleFonts.inter(
                        color: textSecondary,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
