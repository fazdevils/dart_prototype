// Auto-generated from temp.html.
// DO NOT EDIT.

library temp_html;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'xclickcounter.dart';
import 'dart:html';
import 'package:web_ui/web_ui.dart';


// Original code


// initial value for click-counter
int startingCount = 5;

/**
 * Learn about the Web UI package by visiting
 * http://www.dartlang.org/articles/dart-web-components/.
 */
void main() {
  // Enable this to use Shadow DOM in the browser.
  //useShadowDom = true;
}

// Additional generated code
void init_autogenerated() {
  var __root = autogenerated.webUIRoot;
  var __e0;
  var __t = new autogenerated.Template(__root);
  __e0 = __root.nodes[5].nodes[1];
  __t.oneWayBind(() => startingCount, (e) { if (__e0.xtag.count != e) __e0.xtag.count = e; }, false, false);
  __t.component(new CounterComponent()..host = __e0);
  __t.create();
  __t.insert();
}

//# sourceMappingURL=temp.dart.map