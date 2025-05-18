import 'package:anki_samurai/components/app_bar_secondary.dart';
import 'package:anki_samurai/components/button.dart';
import 'package:anki_samurai/components/list_item.dart';
import 'package:anki_samurai/components/separator.dart';
import 'package:anki_samurai/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return Scaffold(
      appBar: CustomAppBarSecondary(
        title: 'settings',
        onBackPressed: () => context.pop(),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          SvgPicture.asset(
            'assets/images/guest_account_logo.svg',
            height: 150,
          ),

          const SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: Divider(height: 2, thickness: 1, color: primaryColor),
          ),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                ListItem(
                  icon: Icons.settings,
                  label: 'general_settings',
                  onTap: () => context.push('/settings/general'),
                ),
                separator(),
                ListItem(
                  icon: Icons.help_outline,
                  label: 'faq',
                  onTap: () {},
                ),
                separator(),
                ListItem(
                  icon: Icons.info_outline,
                  label: 'contact_information',
                  onTap: () {},
                ),
                separator(),
                ListItem(
                  icon: Icons.description_outlined,
                  label: 'terms_of_use',
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Button(
                        label: 'log_in',
                        color: primaryColor,
                        textColor: Colors.white,
                        borderRadius: 16,
                        width: MediaQuery.of(context).size.width * 0.6,
                        onPressed: () {},
                      ),
                      const SizedBox(height: 12),
                      Button(
                        label: 'create_account',
                        color: Colors.white,
                        textColor: Colors.black,
                        border: BorderSide(color: AppTheme.scaffoldBackground),
                        borderRadius: 16,
                        width: MediaQuery.of(context).size.width * 0.6,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
