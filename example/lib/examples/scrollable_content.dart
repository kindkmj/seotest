import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:seo_renderer_example/examples/widgets/image_widget.dart';
import 'package:seo_renderer_example/examples/widgets/link_widget.dart';
import 'package:seo_renderer_example/examples/widgets/text_widget.dart';

class ScrollableContent extends StatelessWidget {
  const ScrollableContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SEO HTML Tag Creator'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextRenderer(
                text: "dldldldldwksad",
                style: TextRendererStyle.header4,
                child: Text("안녕"),
              ),
//              for (var i = 0; i < 10; i++) ...[
//                TextWidget(),
//                TextWidget(),
//                LinkWidget(),
//                TextWidget(),
//                TextWidget(),
//                ImageWidget(),
//              ]
            ],
          ),
        ),
      ),
    );
  }
}
