 part of prototype_library;
 
 class LocationXmlFactory extends Factory<Location, String>{
   
   Location create(String xmlString) {
     XmlElement xmlTree = XML.parse(xmlString);
     
     return _createFromXmlTree(xmlTree);
   }

   
   List<Location> createList(String xmlString) {
    
    XmlElement xmlTree = XML.parse(xmlString);
    List<Location> locationList = new List<Location>();
    
    for (XmlElement locationElement in xmlTree.queryAll("location")) {
      locationList.add(_createFromXmlTree(locationElement));
    }
    return locationList;
  }
  
   // XML Private
   Location _createFromXmlTree(XmlElement xmlTree) {
     int locationId = int.parse(xmlTree.attributes['id']);
     String name = xmlTree.attributes['name'];
     String address = _getXmlValue(xmlTree, "address");
     int zones = int.parse(_getXmlValue(xmlTree, "zones"));
     
     return new Location(locationId, name, address, zones);
   }

   static String _getXmlValue(XmlElement xmlTree, String nodeName) => ((xmlTree.query(nodeName)[0] as XmlElement).children[0] as XmlText).text;

}  