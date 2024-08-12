import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_nft_market/constants/app_pallete.dart';
import 'package:slicing_nft_market/presentation/pages/widgets/bid_tile.widget.dart';
import 'package:slicing_nft_market/presentation/pages/widgets/page_widget.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
        child: SingleChildScrollView(
            child: Column(
      children: [
        userInfo(),
        popularBids(),
        const Gap(36),
        browse(),
      ],
    )));
  }

  Widget popularBids() {
    return Padding(
      padding: const EdgeInsets.only(top: 36),
      child: listTile(
        title: 'Popular Bids',
        itemHeight: 268,
        itemBuilder: (context, index) {
          BidTileWidget();
        },
      ),
    );
  }

  Widget browse() {
    return Padding(
      padding: const EdgeInsets.only(top: 36),
      child: listTile(
        title: 'Browse',
        itemHeight: 196,
        itemBuilder: (context, index) {
          return Text('$index');
        },
      ),
    );
  }

  Column listTile({
    required String title,
    required double itemHeight,
    required NullableIndexedWidgetBuilder itemBuilder,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            title,
            style: GoogleFonts.inter(
              color: textPrimary,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Gap(16),
        SizedBox(
          height: itemHeight,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemBuilder: itemBuilder,
            separatorBuilder: (context, index) {
              return const Gap(24);
            },
            itemCount: 100,
          ),
        )
      ],
    );
  }

  Widget userInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // AVATAR
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: textPrimary,
                  ),
                  color: colorWhite,
                  borderRadius: BorderRadius.circular(60 / 2),
                ),
                child: Image.asset('assets/images/User1.png'),
              ),
              const Gap(12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Endros',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: textPrimary,
                    ),
                  ),
                  const Gap(6),
                  Text(
                    'Level 109',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: textSecondary,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: colorWhite,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svgs/notification.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
