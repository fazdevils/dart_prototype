 part of prototype_library;
 
 class LocationXmlFactory extends Factory<Location, String>{
  
  List<Location> create(String xmlString) {
    
    XmlElement xmlTree = XML.parse(xmlString);
    List<Location> locationList = new List<Location>();
    
    for (XmlElement locationElement in xmlTree.queryAll("location")) {
      locationList.add(new Location._xmlTree(locationElement));
    }
    return locationList;
  }
  
}  