import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../state/state.dart';
import '../data/localization.dart';
import '../widgets/app_clickable.dart';
import 'home_screen.dart';
import 'glossary_screen.dart';
import 'about_screen.dart';
import 'settings_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = AppStateProvider.of(context);
    final String lang = provider.locale.languageCode;
    final texts = localizedStrings[lang]!;

    final Color primaryColor = Theme.of(context).primaryColor;
    final Color bgColor = Theme.of(context).scaffoldBackgroundColor;
    final Color iconColor = Theme.of(context).iconTheme.color!;
    final Color textColor = Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(40, 80, 40, 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: iconColor, width: 4),
                        color: iconColor.withValues(alpha: 0.1),
                      ),
                      child: ClipOval(
                        child: Transform.scale(
                          scale: 1.9,
                          child: Image.asset(
                            'assets/icon/icon_foreground.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    Text(
                      texts['app_title']!.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900, letterSpacing: 1.5, color: iconColor),
                    ),
                    Text(
                      texts['subtitle']!,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: iconColor.withValues(alpha: 0.7)),
                    ),

                    const SizedBox(height: 50),


                    _buildMenuButton(context, texts['drawer_sites']!, Icons.map_outlined, primaryColor, () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                    }),

                    _buildMenuButton(context, texts['drawer_glossary']!, Icons.menu_book, primaryColor, () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const GlossaryScreen()));
                    }),

                    _buildMenuButton(context, texts['drawer_settings']!, Icons.settings, primaryColor, () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen()));
                    }),

                    _buildMenuButton(context, texts['drawer_about']!, Icons.info_outline, primaryColor, () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutScreen()));
                    }),

                    const SizedBox(height: 20),

                    // ÇIKIŞ BUTONU
                    _buildMenuButton(context, texts['menu_exit']!, Icons.exit_to_app, Colors.red.shade400, () {
                      SystemNavigator.pop();
                    }, isExit: true),

                    const SizedBox(height: 40),

                    Text(
                      texts['menu_version_text']!,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: textColor.withValues(alpha: 0.4), fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 0.5),
                    ),
                  ],
                ),
              ),
            ),


            Positioned(
              top: 10, left: 10,
              child: SafeArea(
                child: AppClickable(
                  onTap: provider.toggleLocale,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    child: Text(lang == 'en' ? 'TR' : 'EN', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: iconColor)),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10, right: 10,
              child: SafeArea(
                child: AppClickable(
                  onTap: provider.toggleTheme,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    child: Icon(provider.themeMode == ThemeMode.light ? Icons.dark_mode : Icons.light_mode, color: iconColor, size: 28),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildMenuButton(BuildContext context, String label, IconData icon, Color color, VoidCallback onTap, {bool isExit = false}) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final borderColor = isDark ? Colors.white70 : Colors.black87;
    final textColor = isDark ? Colors.white : Colors.black87;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: AppClickable(
        onTap: onTap,
        isExit: isExit,
        rippleColor: color,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: isExit ? color.withValues(alpha: 0.2) : Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: isExit ? color : borderColor.withValues(alpha: 0.5), width: 2.5),
            boxShadow: [
              BoxShadow(color: isExit ? color.withValues(alpha: 0.4) : Colors.black.withValues(alpha: 0.2), offset: const Offset(4, 4), blurRadius: 0),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: isExit ? color : Theme.of(context).iconTheme.color),
              const SizedBox(width: 12),
              Text(
                label.toUpperCase(),
                style: TextStyle(color: isExit ? color : textColor, fontWeight: FontWeight.w900, letterSpacing: 1.0, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}