import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube For Me',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: YouTubeWebView(),
    );
  }
}

class YouTubeWebView extends StatefulWidget {
  @override
  _YouTubeWebViewState createState() => _YouTubeWebViewState();
}

class _YouTubeWebViewState extends State<YouTubeWebView> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    // WebView platformu başlatmak için WebViewController'ı başlatıyoruz
    _controller = WebViewController()..setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YouTube ME"),
      ),
      body: WebViewWidget(
        controller: _controller
          ..loadRequest(Uri.parse('https://www.youtube.com/')),  // YouTube URL'si
      ),
    );
  }
}
