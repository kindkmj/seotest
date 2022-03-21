import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class ImageRendererExample extends StatelessWidget {
  const ImageRendererExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageRenderer(
              alt: 'Network Image',
              child: Image.network('https://fakeimg.pl/300x300/?text=Network'),
            ),
            ImageRenderer(
              alt: 'Asset Image',
              child: Image.asset('assets/asset_image.png'),
            ),
            ImageRenderer(
              alt: 'Memory Image',
              child: Image.memory(
                base64Decode(
                  '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3bB3MBjBWqBZLxKXzWbl+fPnM1/HqlAoqD2VJ5FIzPQaWJYljx49CryO2aKZjLKYDgYjWAtkMsIKWhspFAry4sULo69gvyqdTsvXX38t33//faQNPuru9SjrPX6/K5fLyQ8//BB6lJjP52V3d1fu3bsX+vlMM/1iCz8m03uCFYy9hC4sy7q4CkImk4n86ew2wpo8tm3bkk6njXazZzIZefLkiTSbTalWq1Kr1aTb7YrjODIajSQej0sikZB4PC7JZFJKpZIUi8XQ6yGTDdO2bUkmk8YL/9OvVy6XM/q9k98Vi8UknU4HBjmbzcqzZ8+k2WxKpVKRjx8/SqfTEcdxZDgcim3bF1eqKBaLsra2NtMUa/I3JRKJuUynGWHNh7W3t6dvNRZQZjwey88//+w56k6lUvLjjz8u+Vnpw5QQWILRaOS7RDDPPcJfMoIFLEHQSdkEywzBApYg6KyFYrG4pGeiG8EClsDrS1VFPh26oe1bjW4KwQLmwO8bcGq1mtTrdc+fL/uEbM04rAGY0WAwkL29PSmXy1IulyWdTksqlZJYLCa1Wk329/d97x/lGLvbimABM/rw4YOMRiM5Pz/3nfq5icfjS72goHZMCYEZNZvNyPfd2trign0h8EoBM4r6LUaxWGzm04ZuG4IFzCjqVTkePnzI9w+GRLCAGUU5B/DOnTs3cvVT7QgWMKP79+8bn2htWZZ89dVX8vjx4wU/qy8TewmBGcViMXnx4oV8+PBBKpWKtNtt6ff7MhwOxbIsicfjkkqlpFQqyebm5tK+efpLRLCAObAsSzY2NmRjY+Omn8oXjSkhADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1CBYANQgWADUIFgA1/geV1rSWGtJnBgAAAABJRU5ErkJggg==',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
