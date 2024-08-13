import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_nft_market/constants/app_pallete.dart';

class Bid {
  final String image;
  final String title;
  final String ends;
  final String price;

  Bid({
    required this.image,
    required this.title,
    required this.ends,
    required this.price,
  });
}

class BidTileWidget extends StatelessWidget {
  final Bid bid;
  const BidTileWidget({
    super.key,
    required this.bid,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 270,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        bid.image,
                      ).image),
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
                        bid.title,
                        style: GoogleFonts.inter(
                          color: textPrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Gap(8),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Ends in ',
                            style: GoogleFonts.inter(
                              color: textSecondary,
                            ),
                          ),
                          TextSpan(
                              text: bid.ends,
                              style: GoogleFonts.inter(
                                color: textPink,
                                fontWeight: FontWeight.w600,
                              ))
                        ]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/svgs/bid.svg'),
                      const Gap(4),
                      Text(
                        bid.price,
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: textPrimary,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

// https://plus.unsplash.com/premium_photo-1664640458531-3c7cca2a9323?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
