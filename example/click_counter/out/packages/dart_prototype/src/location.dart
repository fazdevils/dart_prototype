import 'package:xml/xml.dart';

class Location {
  final int locationId;
  final String name;
  final String address;
  final int zones;
  
  Location(this.locationId, this.name, this.address, this.zones);
  
  factory Location.xml(String xmlString) {
    XmlElement xmlTree = XML.parse(xmlString);
    
    return new Location.xmlTree(xmlTree);
  }

  factory Location.xmlTree(XmlElement xmlTree) {
    int locationId = int.parse(xmlTree.attributes['id']);
    String name = xmlTree.attributes['name'];
    String address = _getXmlValue(xmlTree, "address");
    int zones = int.parse(_getXmlValue(xmlTree, "zones"));
    
    return new Location(locationId, name, address, zones);
  }

  static String _getXmlValue(XmlElement xmlTree, String nodeName) => ((xmlTree.query(nodeName)[0] as XmlElement).children[0] as XmlText).text;
}