import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const JustFuckingUseFlutter());

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
                  'One Codebase. All Platforms. No More Bullshit Duplication.',
                  '''Tired of writing the same fucking app six times? iOS in Swift. Android in Kotlin. Web in React. Desktop in Electron garbage. Mac in whatever. Linux in "good luck."

Flutter: Write it once in Dart. Run it everywhere—mobile, web, desktop, embedded. Native performance. Beautiful UIs. No "write once, look like shit everywhere" like Java or React Native.

One codebase. One language. One team that isn't suicidal from maintaining platform-specific hell.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'Hot Reload: Because Waiting Is For Assholes',
                  '''Remember staring at build progress bars while your soul dies? Xcode taking minutes. Android Studio chugging like a drunk.

Flutter hot reload: Change code. Save. See it instantly. Fucking instantly.

Tweak UI live. Move shit around while the app runs. No full rebuilds. It's magic that should've existed a decade ago.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'Dart: A Language That Doesn\'t Suck',
                  '''JavaScript was rushed in 10 days. It shows—dynamic typing hell, null pointer nightmares, async callback pyramids.

Dart: Static types that catch bugs early. Built-in null safety. Clean async/await. Fast compilation. Sensible syntax. No need for TypeScript bandaids or Babel bullshit.

Just write code that works. Fast. Predictable. Enjoyable.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'No CSS. No HTML. Just Fucking Widgets.',
                  '''CSS is a cascading pile of regret. Specificity wars. !important abuse. Flexbox that breaks randomly. "Why the fuck is this div off by 2px?"

Flutter: Everything's a widget. Layouts compose like Lego built by sane people. Padding? Widget. Button? Widget. Complex screen? Nest widgets.

Declarative UI in code. No separate style files. No class name debates. The layout system actually works. Every time.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'Beautiful Out Of The Box. Pixel-Perfect Everywhere.',
                  '''Most cross-platform tools give "close enough" UIs. Wrong shadows. Janky scrolls. "Almost native" that fools no one.

Flutter draws every pixel itself. Looks identical on every platform. Material 3. Cupertino. Custom themes. Animations that don't suck to write.

Your app looks pro. Feels fast. No compromises.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  '"But Bundle Size—"',
                  '''Shut the fuck up.

Yeah, Flutter web isn't a 5KB HTML file. But it handles real apps: state, routing, animations, offline—consistently across browsers. Flutter's bundle is fine and shrinking every release.

Your "optimized" JS with 200 npm deps and a 2MB vendor chunk isn't winning awards either.''',
                ),
                const SizedBox(height: 32),
                _buildSection('"But The Learning Curve—"', '''Cry me a river.

Everything worthwhile has a curve. React? Hooks, effects, context, 15 state libs, memo hell.

Flutter? Widgets. Stateless for static shit. Stateful for changing shit. That's it for 90% of apps.

Docs are god-tier. Widget catalog is searchable gold. Community doesn't gatekeep.

Stop whining. Start building.'''),
                const SizedBox(height: 32),
                _buildSection(
                  '"But It\'s Google—"',
                  '''Yeah, and they dogfood it in real apps. Billions of users. Massive investment.

Better than some indie framework that'll die next year.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'What You Actually Get',
                  '''- One codebase: iOS, Android, web, Windows, macOS, Linux
- Hot reload that spoils you forever
- Layout system that respects physics and math
- Stunning built-in widgets (Material + Cupertino)
- Animations you can actually implement without tears
- Type safety that saves your ass
- Compiles to native ARM/machine code—blazing fast
- Packages that mostly just work
- Backed by Google, used in production everywhere''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'Stop Fucking Overthinking',
                  '''You could waste months debating React Native vs. Tauri vs. Kotlin Multiplatform vs. whatever flavor-of-the-month bullshit.

Or just fucking use Flutter. Ship something that works. Looks great. Performs.

Users don't give a shit about your framework drama. They want an app that doesn't suck.

Flutter doesn't suck.''',
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
          'A no-bullshit rant for cross-platform sanity',
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
            'Get Started, Motherfucker',
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
              'flutter create my_fucking_app\ncd my_fucking_app\nflutter run',
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 14,
                color: Color(0xFF4ade80),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'That\'s literally it. Go build something before you die of analysis paralysis.',
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
          'Inspired by the legends:',
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
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Made by ',
                  style: TextStyle(fontSize: 14, color: Color(0xFF888888)),
                ),
                _buildLink('Sixtus Agbo', 'https://sixtusagbo.dev'),
              ],
            ),
            _buildLink('GitHub', 'https://github.com/sixtusagbo'),
            _buildLink('Twitter/X', 'https://twitter.com/sixtusagbo'),
          ],
        ),
        const SizedBox(height: 24),
        const Text(
          'This page? Built with Flutter Web. Deal with it.',
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
