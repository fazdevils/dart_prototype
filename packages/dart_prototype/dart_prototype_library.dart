library prototype_library;

import 'dart:async';
import 'package:xml/xml.dart';

// IoC
part 'src/application_context.dart';


// beans
part 'src/bean/location.dart';

// factories
part 'src/factory/abstract_factory.dart';
part 'src/factory/xml_factory/location_factory.dart';

// services
part 'src/service/web_service.dart';

// mocks
part 'src/mock/mock_web_service.dart';