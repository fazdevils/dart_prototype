part of prototype_library;

/**
 * This is a typedef for a method declaration that can be passed into a 
 * function.  This is not required to pass a method as a parameter, but
 * it adds some additional type safety.
 */
typedef Future RandomSleep(dynamic wsResult);

/**
 * This class demonstrates the Dart 'implements' construct.  Unlike Java,
 * this keyword does not imply that the class implements an interface, instead
 * it specifies that the class provides an alternate implementaton for a class,
 * but and can be used in place of that class.  To achieve "traditional 
 * inheritence" and only overide part of a parent objects implementation, 
 * the 'extends' construct can be used.  
 * 
 * In Dart this construct is called an 'Implicit Interface'.  In other 
 * languages, this is sometimes referred to as 'duck typing'.  There does not 
 * seem to be the equivilent of a Java interface in Dart.
 */
class MockLocationWebService implements WebService {
  
  final Factory _objectFactory;
  final RandomSleep _randomSleepMethod;
  bool firstTime = true;
  
  /**
   * square brackets in a method declaration denote an optional parameter
   */
  MockLocationWebService(this._objectFactory, [this._randomSleepMethod = null]);
  
  /**
   * Future & Completer are Dart's way of handling asyncronous work.
   * https://www.dartlang.org/docs/dart-up-and-running/contents/ch03.html#ch03-future-example
   */
  Future call(String url) {
    var completer = new Completer();
    
    List<Location> locations;
    if (firstTime) {
      firstTime = false;
      locations = _objectFactory.createList(_mockXml);
    } else {
      locations = _generateRandomLocations();
    }
    
    if (null == _randomSleepMethod) {
      completer.complete(locations);
      return completer.future;
    } else {
      return _randomSleepMethod(locations);
    }
  }
  
  List<Location> _generateRandomLocations() {
    Random rnd = new Random();
    int numLocations = rnd.nextInt(10);
    
    List<Location> randomLocations = new List<Location>();
    for (int i = 1; i < numLocations+1; ++i) {
      String name = 'Location ' + i.toString();
      String addr = 'Appt. ' + (i+100).toString() + ' Dart St';
      int numZones = 25+i;
      randomLocations.add(new Location(i, name, addr, numZones));
    }  
    
    return randomLocations;
  }
  
  final String _mockXml = 
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
}