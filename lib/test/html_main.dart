import 'dart:html';

import 'package:quiver/strings.dart';
import 'package:tekartik_browser_utils/browser_utils_import.dart';

App app;

void main() {
  app = App();
  app.main();
  //devPrint("Hi");
}

class App {
  Element holder;

  void main() {
    holder = DivElement();
    UListElement ul = UListElement();
    //document.body.append(holder);
    document.body.querySelectorAll('a').forEach((Element element) {
      AnchorElement anchorElement = element as AnchorElement;
      String href = anchorElement.href;
      String title = anchorElement.text;
      if (isEmpty(title)) {
        title = href;
      }

      LIElement li = LIElement();

      AnchorElement newAnchor = AnchorElement()
        ..href = href
        ..text = title;
      li.append(newAnchor);
      ul.append(li);

      // remove ourself
      anchorElement.remove();
    });
    holder.append(ul);
    document.body.append(holder);

    setHidden(document.body, false);
  }
}
