part of prototype_library;

@observable
class Location {
  final int locationId;
  final String name;
  final String address;
  final int zones;
  
  bool selected = false;
  bool expanded = false;
  
  Location(this.locationId, this.name, this.address, this.zones);
    
}