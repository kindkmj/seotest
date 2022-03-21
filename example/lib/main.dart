import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:seo_renderer_example/examples/image_renderer_example.dart';
import 'package:seo_renderer_example/examples/link_singletext_example.dart';
import 'package:seo_renderer_example/examples/scrollable_content.dart';
import 'package:seo_renderer_example/examples/single_text_item.dart';
import 'package:seo_renderer_example/examples/visibility_example.dart';

void main() {
  runApp(
    RobotDetector(
      debug: true,
      child: MaterialApp(
        home: MyApp(),
        navigatorObservers: [seoRouteObserver],
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextRenderer(
              style: TextRendererStyle.header2,
              text: "flexmeKimminjin",
              child: SelectableText("dksssadsa"),
            ),
            TextRenderer(
              style: TextRendererStyle.header2,
              text: "flexme Kim min jin",
              child: SelectableText("dksssadsa"),
            ),
            TextRenderer(
              style: TextRendererStyle.header2,
              text: "츠케멘 김민",
              child: SelectableText("dksssadsa"),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SingleTextItem()));
              },
              child: TextRenderer(
                child: Text('Single Text Item'),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => ScrollableContent()));
              },
              child: TextRenderer(
                child: Text('Scrollable Text Content'),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => SingleTextLinkExample()));
              },
              child: TextRenderer(
                child: Text('Single Link Text Item'),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => ImageRendererExample()));
              },
              child: TextRenderer(
                child: Text('Image renderer'),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => VisibilityExample()));
              },
              child: TextRenderer(
                child: Text('Visibility'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
