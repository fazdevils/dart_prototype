import 'package:unittest/unittest.dart';
import 'package:dart_prototype/src/location.dart';

void main() {
  
  test('Parse XML', (){
      String xml = 
          "<location id=\"1\" name=\"Century Grill\">" +
          "  <address>318 Pearl Street Buffalo, NY 14202</address>" +
          "  <zones>10</zones>" +   
          "</location>";
      
      Location location = new Location.xml(xml);
      expect(location.locationId, equals(1));
      expect(location.name, equals("Century Grill"));
      expect(location.address, equals("318 Pearl Street Buffalo, NY 14202"));
      expect(location.zones, equals(10));
  });
}