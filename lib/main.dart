import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const JustFuckingUseFlutter());
}

class JustFuckingUseFlutter extends StatelessWidget {
  const JustFuckingUseFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just Fucking Use Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1a1a1a),
        textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: 'Georgia',
          bodyColor: const Color(0xFFe0e0e0),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWide = screenWidth > 800;
    final horizontalPadding = isWide ? screenWidth * 0.2 : 24.0;

    return Scaffold(
      body: SelectionArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: 48,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitle(),
                const SizedBox(height: 32),
                _buildSection(
                  'One Codebase. Every Platform. Done.',
                  '''You know what's exhausting? Writing the same goddamn app five times. Once for iOS. Once for Android. Once for web. Once for Windows. Once for Mac. Once for Linux. That's six fucking codebases to maintain, each with their own special snowflake bugs.

Flutter says: write it once, run it everywhere. And I don't mean "run it everywhere" like Java promised in the 90s while everything looked like absolute garbage. I mean actually beautiful, native-performance apps on every platform from a single codebase.

Mobile, web, desktop, embedded — all from one Dart codebase. One language. One framework. One team. Done.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'Hot Reload. Because Life Is Short.',
                  '''You know what sucks? Making a tiny UI change and waiting 45 seconds for your app to rebuild. Then realizing you used the wrong shade of blue and doing it all over again.

Flutter's hot reload is measured in milliseconds. MILLISECONDS. Change your code, see it instantly. Your state is preserved. Your sanity is preserved. You actually enjoy building UIs instead of wanting to throw your laptop out the window.

Stop waiting. Start building.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'Dart Is Actually Good. Fight Me.',
                  '''Yes, you have to learn Dart. I know you're clutching your JavaScript like a security blanket. Get over it.

Dart is what happens when smart people look at Java and JavaScript, take the good parts, throw away the garbage, and add modern features. It's strongly typed but not annoying about it. It has null safety that actually works. The tooling is excellent.

And here's the thing — you'll learn it in a weekend. It's not Haskell. It's not Rust. It's a language designed to be productive, not to make you feel smart at parties.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'Everything Is A Widget. That\'s It.',
                  '''Flutter's mental model is dead simple: everything is a widget. Your app? Widget. A button? Widget. Padding? Widget. That animation? Also a widget.

You compose small widgets into bigger widgets into screens into apps. No separate template language. No CSS fighting with your HTML. No wondering why your styles aren't applying. Just widgets, all the way down.

Some people complain about "widget trees getting too deep." You know what? Extract a widget. Make it reusable. This is programming 101. If your code is messy, that's on you, not Flutter.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'Beautiful By Default',
                  '''Most cross-platform frameworks give you UIs that look... off. Something about the shadows is wrong. The animations feel janky. It's clearly not native and everyone can tell.

Flutter renders every pixel itself. It doesn't use platform UI components that always feel slightly wrong. Your app looks exactly the same on every device because Flutter controls everything.

Material Design 3, Cupertino widgets, or your own custom design system — Flutter does it all beautifully.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'But What About—',
                  '''"But the app size!"
It's a few megabytes. Your users have TikTok installed. They don't care.

"But native performance!"
Flutter compiles to native ARM code. It's fast. Unless you're building a AAA game engine, you'll never notice a difference.

"But I already know React Native!"
Cool. Enjoy your JavaScript bridge and debugging why your app is dropping frames. We'll be over here with our direct compilation and predictable 60fps.

"But web support is still maturing!"
It's production-ready. Google uses it. Plenty of companies use it. Stop making excuses.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'Just Fucking Use It',
                  '''Look, I'm not saying Flutter is perfect. Nothing is perfect. But it solves real problems that developers have been complaining about for years:

• Multiple codebases for different platforms? Gone.
• Slow development cycles? Gone.
• Inconsistent UIs across devices? Gone.
• Separate teams for iOS and Android? Optional.

You can keep maintaining six different apps, hiring specialists for each platform, and wondering why your Android app has bugs your iOS app doesn't.

Or you can just fucking use Flutter.''',
                ),
                const SizedBox(height: 48),
                _buildGetStarted(),
                const SizedBox(height: 64),
                _buildFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Just Fucking Use Flutter',
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            height: 1.2,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Seriously. Stop overthinking it.',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF888888),
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }

  Widget _buildSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          content,
          style: const TextStyle(
            fontSize: 16,
            height: 1.7,
            color: Color(0xFFcccccc),
          ),
        ),
      ],
    );
  }

  Widget _buildGetStarted() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF252525),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF404040)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Get Started',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF1a1a1a),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const SelectableText(
              'flutter create my_app\ncd my_app\nflutter run',
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 14,
                color: Color(0xFF4ade80),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'That\'s it. That\'s the whole tutorial. Now go build something.',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF888888),
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(height: 1, color: const Color(0xFF404040)),
        const SizedBox(height: 24),
        const Text(
          'Inspired by the fine folks who came before:',
          style: TextStyle(fontSize: 14, color: Color(0xFF888888)),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 16,
          runSpacing: 8,
          children: [
            _buildLink(
              'motherfuckingwebsite.com',
              'https://motherfuckingwebsite.com',
            ),
            _buildLink(
              'bettermotherfuckingwebsite.com',
              'https://bettermotherfuckingwebsite.com',
            ),
            _buildLink(
              'perfectmotherfuckingwebsite.com',
              'https://perfectmotherfuckingwebsite.com',
            ),
            _buildLink(
              'justfuckingusetailwind.com',
              'https://justfuckingusetailwind.com',
            ),
            _buildLink(
              'justfuckingusehtml.com',
              'https://justfuckingusehtml.com',
            ),
            _buildLink(
              'justfuckingusereact.com',
              'https://justfuckingusereact.com',
            ),
          ],
        ),
        const SizedBox(height: 24),
        Wrap(
          spacing: 16,
          runSpacing: 8,
          children: [
            const Text(
              'Made by Sixtus Agbo',
              style: TextStyle(fontSize: 14, color: Color(0xFF888888)),
            ),
            _buildLink('GitHub', 'https://github.com/sixtusagbo'),
            _buildLink('Twitter/X', 'https://twitter.com/sixtusagbo'),
          ],
        ),
        const SizedBox(height: 24),
        const Text(
          'Yes, this site is built with Flutter. Obviously.',
          style: TextStyle(
            fontSize: 12,
            color: Color(0xFF666666),
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }

  Widget _buildLink(String text, String url) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => _launchUrl(url),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF60a5fa),
            decoration: TextDecoration.underline,
            decorationColor: Color(0xFF60a5fa),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
