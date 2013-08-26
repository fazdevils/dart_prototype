// Auto-generated from location_container.html.
// DO NOT EDIT.

library location_counter;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'package:web_ui/web_ui.dart';



class CounterComponent extends WebComponent with Observable  {
  /** Autogenerated from the template. */

  autogenerated.ScopedCssMapper _css;

  /** This field is deprecated, use getShadowRoot instead. */
  get _root => getShadowRoot("location-counter");
  static final __shadowTemplate = new autogenerated.DocumentFragment.html('''
        <div>
          <button>Click me</button><br>
          <span></span>
        </div>
      ''');
  autogenerated.ButtonElement __e1;
  autogenerated.SpanElement __e3;
  autogenerated.Template __t;

  void created_autogenerated() {
    var __root = createShadowRoot("location-counter");
    setScopedCss("location-counter", new autogenerated.ScopedCssMapper({"location-counter":"[is=\"location-counter\"]"}));
    _css = getScopedCss("location-counter");
    __t = new autogenerated.Template(__root);
    __root.nodes.add(__shadowTemplate.clone(true));
    __e1 = __root.nodes[1].nodes[1];
    __t.listen(__e1.onClick, ($event) { increment(); });
    __e3 = __root.nodes[1].nodes[4];
    var __binding2 = __t.contentBind(() => count, false);
    __e3.nodes.addAll([new autogenerated.Text('(click count: '),
        __binding2,
        new autogenerated.Text(')')]);
    __t.create();
  }

  void inserted_autogenerated() {
    __t.insert();
  }

  void removed_autogenerated() {
    __t.remove();
    __t = __e1 = __e3 = null;
  }

  /** Original code from the component. */

  int __$count = 0;
  int get count {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'count');
    }
    return __$count;
  }
  set count(int value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'count',
          __$count, value);
    }
    __$count = value;
  }
  

  void increment() {
    count++;   
  }
}

//# sourceMappingURL=location_counter.dart.map