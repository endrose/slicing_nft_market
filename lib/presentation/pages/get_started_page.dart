import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_nft_market/constants/app_pallete.dart';
import 'package:slicing_nft_market/presentation/pages/sign_up_page.dart';
import 'package:slicing_nft_market/presentation/pages/widgets/button_widget.dart';
import 'package:slicing_nft_market/presentation/pages/widgets/page_widget.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Illustration.png'),
            const Gap(60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                textAlign: TextAlign.center,
                'Collect NFTs As Your Own Collection',
                style: GoogleFonts.inter(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  height: 36 / 26,
                ),
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Text(
                textAlign: TextAlign.center,
                'NFT is gonna help us to keep what is belong to us, like forever',
                style: GoogleFonts.inter(
                  color: textPrimary,
                  fontSize: 16,
                  height: 26 / 16,
                ),
              ),
            ),
            const Gap(40),
            ButtonWidget(
              isFullWith: false,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const SignUpPage(),
                  ),
                );
              },
              name: 'Getting Started',
            )
          ],
        ),
      ),
    );
  }
}
