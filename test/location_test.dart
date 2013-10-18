import 'package:unittest/unittest.dart';
import 'package:dart_prototype/dart_prototype_library.dart';

void main() {
  
  test('Parse XML', (){
      String xml = 
          "<location id=\"1\" name=\"Century Grill\">" +
          "  <address>318 Pearl Street Buffalo, NY 14202</address>" +
          "  <zones>10</zones>" +   
          "</location>";
      
      Location location = new LocationXmlFactory().create(xml);
      expect(location.locationId, equals(1));
      expect(location.name, equals("Century Grill"));
      expect(location.address, equals("318 Pearl Street Buffalo, NY 14202"));
  });
  
  test('Parse XML List', (){
    String xml = 
        //"<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
        "  <root>" +
        "    <locations>" +
        "      <location id=\"1\" name=\"Century Grill\">" +
        "        <address>318 Pearl Street Buffalo, NY 14202</address>" +
        "        <zones>10</zones>" +   
        "      </location>"+
        "      <location id=\"2\" name=\"Pan American Grill\">" +
        "        <address>391 Washington Street Buffalo, NY 14202</address>" +
        "        <zones>6</zones>" +   
        "      </location>" +
        "      <location id=\"3\" name=\"Coffee Rostery\">" +
        "        <address>350 Main Street Buffalo, NY 14202</address>" +
        "        <zones>4</zones>" +   
        "      </location>" +
        "    </locations>" +
        "  </root>";
    
    Factory factory = new LocationXmlFactory();
    List<Location> locations = factory.createList(xml);
    expect(locations.length, equals(3));
  });
}