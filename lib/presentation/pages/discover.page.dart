import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_nft_market/constants/app_pallete.dart';
import 'package:slicing_nft_market/presentation/pages/widgets/bid_tile.widget.dart';
import 'package:slicing_nft_market/presentation/pages/widgets/browse_tile.widget.dart';
import 'package:slicing_nft_market/presentation/pages/widgets/page_widget.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
        bottomNavigationBar: bottomNavigationBar(),
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

  Widget bottomNavigationBar() {
    var menus = ["Discover", "History", "Wishlist", "Setting"];
    var active = 0;
    return Container(
      height: 80,
      padding: const EdgeInsets.only(left: 24, right: 24, top: 10, bottom: 24),
      color: colorWhite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: menus.asMap().entries.map<Widget>((menu) {
          return TextButton(
            onPressed: () {},
            child: SizedBox(
              height: 60,
              width: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svgs/icon_${menu.value.toLowerCase()}.svg',
                  ),
                  const Gap(6),
                  Text(
                    menu.value,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: active == menu.key ? colorPrimary : textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget popularBids() {
    var bids = [
      Bid(
        image:
            'https://plus.unsplash.com/premium_photo-1664640458531-3c7cca2a9323?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'The Masa',
        ends: '35m 11s',
        price: '12.4',
      ),
      Bid(
        image:
            'https://images.unsplash.com/photo-1484589065579-248aad0d8b13?q=80&w=1959&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Centre Power',
        ends: 'Ends 35m 11s',
        price: '12.4',
      ),
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 36),
      child: listTile(
        title: 'Popular Bids',
        itemHeight: 268,
        itemCount: bids.length,
        itemBuilder: (context, index) => BidTileWidget(
          bid: bids[index],
        ),
      ),
    );
  }

  Widget browse() {
    var browse = [
      Browse(
        title: 'Vector',
        image:
            'https://images.unsplash.com/photo-1533158326339-7f3cf2404354?q=80&w=1968&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        count: '12.049',
        item: 'items',
      ),
      Browse(
          title: '3D',
          image:
              'https://plus.unsplash.com/premium_photo-1670876808488-db44fb4a12d3?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          count: '589',
          item: 'items'),
      Browse(
          title: 'Vector',
          image:
              'https://images.unsplash.com/photo-1541356665065-22676f35dd40?q=80&w=1941&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          count: '12.049',
          item: 'items'),
      Browse(
          title: 'Vector',
          image:
              'https://images.unsplash.com/photo-1541356665065-22676f35dd40?q=80&w=1941&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          count: '12.049',
          item: 'items'),
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 36),
      child: listTile(
        title: 'Browse',
        itemHeight: 196,
        itemCount: browse.length,
        itemBuilder: (context, index) => BrowseTileWidget(
          browse: browse[index],
        ),
      ),
    );
  }

  Column listTile({
    required String title,
    required double itemHeight,
    int itemCount = 5,
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
            itemCount: itemCount,
          ),
        )
      ],
    );
  }

  Widget userInfo() {
    return Padding(
      padding: const EdgeInsets.all(24),
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
