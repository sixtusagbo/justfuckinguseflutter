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

Mobile, web, desktop, embedded — all from one Dart codebase. One language. One framework. One team that doesn't want to kill themselves.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'Hot Reload: Because Life Is Too Short',
                  '''Remember waiting for your app to rebuild? Watching that progress bar crawl while your coffee gets cold and your will to live slowly drains away?

Flutter has hot reload. You change code. You save. You see the changes instantly. Not "in a few seconds." Not "after a quick rebuild." Fucking instantly.

You can literally iterate on your UI in real-time. Move a button, tweak a color, adjust padding — all while the app is running. It's like having a conversation with your code instead of sending it letters via carrier pigeon.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'Dart: A Real Programming Language',
                  '''JavaScript was created in 10 days. It shows.

Dart has actual static typing that catches bugs before runtime. Null safety that eliminates an entire class of errors. Async/await that doesn't make you want to gouge your eyes out. A package manager that works. Consistent, readable syntax.

You don't need TypeScript to make it bearable. You don't need Babel to use modern features. You don't need a bundler, a transpiler, and seventeen config files just to write code.

It's just Dart. It compiles fast. It runs fast. It makes sense.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'No CSS. No HTML. Just Widgets.',
                  '''CSS was a mistake. There, I said it. The cascade? More like the cascade of regret when you change one style and break seventeen unrelated components. Specificity wars? !important everywhere? Flexbox that works until it doesn't?

Flutter doesn't have CSS. It has widgets. Everything is a widget. Want a button? That's a widget. Want padding? That's a widget. Want a complex layout? Compose widgets together like rational human beings.

No more class name bikeshedding. No more specificity nightmares. No more "Why is this div 3 pixels off?" No more fighting with z-index until you want to cry.

Just declare your UI in Dart. Compose widgets. The layout system actually makes sense. Imagine that.''',
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
                  '"But the bundle size—"',
                  '''Shut up.

Yes, Flutter web apps are bigger than a hand-crafted HTML file. You know what else they do? Actually work as complex applications with state management, animations, and consistent behavior across every browser.

You want a static blog? Use HTML. You want an actual application? Use Flutter.

It's getting smaller every release. Google has entire teams working on tree-shaking and optimization. Your hand-rolled JavaScript bundle with 47 npm dependencies isn't exactly svelte either.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  '"The learning curve—"',
                  '''Everything has a learning curve, you absolute muppet.

React has hooks, context, reducers, refs, effects, memoization, and seventeen different state management libraries that each require a PhD to understand.

Flutter has widgets. Stateless widgets for things that don't change. Stateful widgets for things that do. BuildContext for accessing theme and navigation. That's like 80% of what you need to know.

The widget catalog is excellent. The documentation is comprehensive. The community is helpful. Stop whining and start building.''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'What You Actually Get',
                  '''• One codebase for iOS, Android, web, Windows, macOS, Linux
• Hot reload that actually works
• A layout system designed by people who understand math
• Beautiful Material Design and Cupertino widgets out of the box
• Animations that are actually pleasant to implement
• A type system that helps instead of annoys
• Native performance because it compiles to machine code
• An ecosystem of packages that mostly work
• A company (Google) that uses it for production apps''',
                ),
                const SizedBox(height: 32),
                _buildSection(
                  'Stop Overthinking It',
                  '''You could spend the next six months evaluating frameworks. Reading comparison articles. Watching YouTube videos. Arguing on Reddit about whether React Native or Kotlin Multiplatform is the future.

Or you could just fucking use Flutter and ship something.

Your users don't care what framework you used. They care that the app works, looks good, and doesn't crash. Flutter does all three.''',
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
          'A no-bullshit guide to cross-platform development',
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
          'Inspired by the folks who came before:',
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
          'This site was built with Flutter Web. Obviously.',
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
