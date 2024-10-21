void main() {
  // Create an instance of Television
  var tv = Television();
  
  // Call volumeUp and volumeDown methods
  tv.volumeUp();  // Should print: ___Volume up___
  tv.volumeDown();  // Should print: ___Volume down___
}

class Remote {
  // Method to increase volume (to be overridden by subclasses)
  void volumeUp() {}

  // Method to decrease volume (to be overridden by subclasses)
  void volumeDown() {}
}

// Television class implements the Remote interface
class Television implements Remote {
  
  // Override volumeUp method from Remote class
  void volumeUp() {
    print("___Volume up___");
  }

  // Override volumeDown method from Remote class
  void volumeDown() {
    print("___Volume down___");
  }
}
