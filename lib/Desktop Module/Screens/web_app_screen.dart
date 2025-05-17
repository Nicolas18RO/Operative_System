import 'package:flutter/material.dart';
import 'package:opeterative_system/Components/Widgets/my_text.dart';
import 'package:opeterative_system/Desktop%20Module/Components/style_desktop.dart';
import 'package:webview_windows/webview_windows.dart';

class WebAppWindow extends StatefulWidget {
  final String appbarName;
  final String url;

  const WebAppWindow({super.key, required this.url, required this.appbarName});

  @override
  State<WebAppWindow> createState() => _WebAppWindowState();
}

class _WebAppWindowState extends State<WebAppWindow> {
  final _controller = WebviewController();

  @override
  void initState() {
    super.initState();
    initWebView();
  }

  Future<void> initWebView() async {
    await _controller.initialize();
    await _controller.loadUrl(widget.url);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyTextDesktop(
            texto: widget.appbarName,
            fontSizeText: 20,
            color: const Color(0xFFF5F5F9)),
        elevation: 0,
        flexibleSpace: MyBackgroundAppBar(),
      ),
      body: Webview(_controller),
    );
  }
}
