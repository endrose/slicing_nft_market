import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_nft_market/constants/app_pallete.dart';
import 'package:slicing_nft_market/presentation/pages/discover.page.dart';
import 'package:slicing_nft_market/presentation/pages/sign_in_page.dart';
import 'package:slicing_nft_market/presentation/pages/widgets/button_widget.dart';
import 'package:slicing_nft_market/presentation/pages/widgets/input_widget.dart';
import 'package:slicing_nft_market/presentation/pages/widgets/page_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            body(),
            TextButton(
              onPressed: () {
                //
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) {
                    return const SignInPage();
                  },
                ));
              },
              child: Text(
                'Sign In to My Account',
                style: GoogleFonts.inter(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              textAlign: TextAlign.center,
              'Start Collecting Amazing Artworks',
              style: GoogleFonts.inter(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: textPrimary,
                height: 36 / 26,
              ),
            ),
          ),
          const Gap(40),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 30,
            ),
            decoration: BoxDecoration(
                color: colorWhite,
                borderRadius: BorderRadius.circular(
                  24,
                )),
            child: Column(
              children: [
                const InputWidget(
                  text: 'Full Name',
                ),
                const InputWidget(
                  text: 'Email Address',
                ),
                const InputWidget(
                  text: 'Password',
                  isObsecure: true,
                ),
                Builder(builder: (context) {
                  return ButtonWidget(
                    isFullWith: true,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) {
                          //
                          return const DiscoverPage();
                        },
                      ));
                    },
                    name: 'Continue',
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
