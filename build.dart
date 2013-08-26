import 'dart:io';
import 'package:web_ui/component_build.dart';

// Ref: http://www.dartlang.org/articles/dart-web-components/tools.html
main() {
  //build(new Options().arguments, ['web/temp.html']);
  build(new Options().arguments, [
    'web/dart_prototype.html',
    'example/click_counter/click_counter_prototype.html']);
}
