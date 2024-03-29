import 'dart:async';
import 'dart:io';

import 'package:biblioteca_esfemica/widgets/titlebar/purpleTitleBar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return PurpleTitleBar(
      title: "Programación",
      body: Row(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder:(context, index) {
                return Container(
                  padding: EdgeInsets.only(bottom: 20),
                  margin: EdgeInsets.zero,
                  height: size.height * 0.8,
                  child: WebView(
                    initialUrl: Uri.dataFromString('<iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fesfemica%2Fposts%2F346508803590716&show_text=true&width=500" width="${size.width * 0.82}" height="765" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>', mimeType: 'text/html').toString(),
                    javascriptMode: JavascriptMode.unrestricted,
                    gestureNavigationEnabled: true,
                    navigationDelegate: _navigationDelegate,
                  ),
                );
              }
            ),
          ),
        ],
      ),
    );
  }

  FutureOr<NavigationDecision> _navigationDelegate(NavigationRequest request) async {
    String fbProtocolUrl;
    if (Platform.isIOS) {
      fbProtocolUrl = 'fb://profile/page_id';
    } else {
      fbProtocolUrl = 'fb://page/page_id';
    }

    String fallbackUrl = '${request.url}';

    try {
      bool launched = await launch(fbProtocolUrl, forceSafariVC: false);

      if (!launched) {
        await launch(fallbackUrl, forceSafariVC: false);
      }
    } catch (e) {
      await launch(fallbackUrl, forceSafariVC: false);
    }
      return NavigationDecision.prevent;
  }
}