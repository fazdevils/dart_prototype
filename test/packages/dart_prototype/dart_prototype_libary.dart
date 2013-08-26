library prototype_library;

import 'dart:async';
import 'package:xml/xml.dart';

// IoC
part 'src/application_context.dart';
part 'src/web_service.dart';

// beans
part 'src/location.dart';

// factories
part 'src/abstract_factory.dart';
part 'src/xml_factory/location_factory.dart';

// mocks
part 'src/mock/mock_web_service.dart';