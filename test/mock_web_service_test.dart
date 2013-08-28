import 'package:unittest/unittest.dart';
import 'package:dart_prototype/dart_prototype_library.dart';

import 'dart:async';
import 'dart:math';

void main() {
  
  test('Test no-wait "WS" call', (){
      ApplicationContext applicationcontext; 
      List<Location> locations = null;
      applicationcontext = new ApplicationContext(new MockLocationWebService(new LocationXmlFactory()));
      
      WebService locationService = applicationcontext.locationService;
      locationService.call("test url").then((response) {
          print('got request1 response!!!');
          locations = response;
          expect(locations.length, equals(3));
      });
      print('test1 done');
  });

  test('Test random-wait "WS" call', (){
    ApplicationContext applicationcontext; 
    List<Location> locations = null;
    applicationcontext = new ApplicationContext(new MockLocationWebService(new LocationXmlFactory(), randomSleep));
    
    WebService locationService = applicationcontext.locationService;
    locationService.call("test url").then((response) {
      print('got request2 response!!!');
      locations = response;
      expect(locations.length, equals(3));
    });
    randomSleep('test2 done').then((String message) => print(message));

    print('timer2 done');
  });
     
}

Future randomSleep(dynamic result) {
  var rnd = new Random();
  Completer completer = new Completer();
  Duration duration = new Duration(milliseconds: rnd.nextInt(1000));
  Timer timer = new Timer(duration, () => completer.complete(result) );
  return completer.future;
}